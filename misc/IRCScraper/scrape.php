<?php

require_once dirname(__DIR__, 2).DIRECTORY_SEPARATOR.'bootstrap/autoload.php';

use Blacklight\IRCScraper;

if (! isset($argv[1]) || $argv[1] !== 'true') {
    exit(
        'Argument 1: (required) false|true  ; false prints this help screen, true runs the scraper.'.PHP_EOL.
        'Argument 2: (optional) false|true  ; true runs in silent mode (no text output)'.PHP_EOL.
        'Argument 3: (optional) false|true  ; true turns on debug (shows sent/received messages from the socket)'.PHP_EOL.
        'examples:'.PHP_EOL.
        'php '.$argv[0].' true                        ; Scrapes PRE with text output.'.PHP_EOL.
        'php '.$argv[0].' true true > /dev/null 2>&1  ; (unix) Scrapes PRE with no text output, in the background (you can close your terminal window).'.PHP_EOL.
        'php '.$argv[0].' true false true             ; Scrapes PRE with text output and debug output.'.PHP_EOL.
        'php '.$argv[0].' true true true              ; Scrapes PRE with debug but no text output.'.PHP_EOL
    );
}

if (config('irc_settings.scrape_irc_username') === '') {
    exit('ERROR! You must put a username in config/irc_settings.php'.PHP_EOL);
}

$silent = (isset($argv[2]) && $argv[2] === 'true');
$debug = (isset($argv[3]) && $argv[3] === 'true');

// Start scraping.
try {
    new IRCScraper($silent, $debug);
} catch (Exception $e) {
    echo $e->getMessage();
}
