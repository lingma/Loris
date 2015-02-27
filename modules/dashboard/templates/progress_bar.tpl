{if $project['recruitment_target'] neq ""}
    <h5>{$project['title']}</h5>
    {if $project['$surpassed_recruitment'] eq "true"}
        The recruitment target has been passed.
        <div class="progress">
            <div class="progress-bar progress-bar-female" role="progressbar" style="width: {$project['female_full_percent']}%" data-toggle="tooltip" data-placement="bottom" title="{$project['female_full_percent']} Female">
                <p>
                {$project['female_total']}
                <br>
                Females
                </p>
            </div>
            <div class="progress-bar progress-bar-male" data-toggle="tooltip" data-placement="bottom" role="progressbar" style="width: {$project['male_full_percent']}%"  title="{$project['male_full_percent']} Male">
                <p>
                {$project['male_total']}
                <br>
                Males
                </p>
            </div>
            <p class="pull-right small target">Target: {$project['recruitment_target']}</p>
        </div>

    {else}
        <div class="progress">
            <div class="progress-bar progress-bar-female" role="progressbar" style="width: {$project['female_percent']}%" data-toggle="tooltip" data-placement="bottom" title="{$project['female_percent']} Female">
                <p>
                {$project['female_total']}
                <br>
                Females
                </p>
            </div>
            <div class="progress-bar progress-bar-male" data-toggle="tooltip" data-placement="bottom" role="progressbar" style="width: {$project['male_percent']}%"  title="{$project['male_percent']} Males">
                <p>
                {$project['male_total']}
                <br>
                Males
                </p>
            </div>
            <p class="pull-right small target">Target: {$project['recruitment_target']}</p>
        </div>
    {/if}
{else}
    Please add a recruitment target for {$project['title']} in the config.xml
{/if}