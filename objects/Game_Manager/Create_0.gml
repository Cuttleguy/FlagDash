if (!rollback_game_running && room == Map1)
{
		instance_deactivate_all(true);
        var _join = rollback_join_game();

        if (!_join) rollback_create_game(2);
}

