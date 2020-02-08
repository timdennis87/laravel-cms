<?php

/**
 * @param null $title
 * @param null $message
 * @return \App\Http\Flash|\Illuminate\Foundation\Application|mixed
 */
function getOptionValue($optionName)
{

    dd(1);
    $option = \App\Option::where('name', $optionName)->first();

    if ($option) {
        return $option->value;
    }

    dd("Option $optionName not found");
}