<?php

namespace App\Config;

enum Department: string
{
    case RECYCLING_PLANT = 'Recycling plant';
    case COMMERCIAL = 'Commercial';
    case CUSTOMER_SERVICE = 'Customer service';
    case HUMAN_RESOURCES = 'Human Resources';
    case CLEANING = 'Cleaning';
}
