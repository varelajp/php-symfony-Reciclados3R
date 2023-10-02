<?php

namespace App\Config;

enum State: string
{
    case PENDING = 'pending';
    case IN_PROGRESS = 'in progress';
    case FINISHED = 'finished';
}
