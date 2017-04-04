package com.SEProject.leemiller.paymentchecklist2.db;

/**
 * Created by leemiller on 4/4/17.
 */

import android.provider.BaseColumns;

public class TaskContract {
    public static final String DB_NAME = "com.SEProject.leemiller.paymentchecklist2.db";
    public static final int DB_VERSION = 1;

    public class TaskEntry implements BaseColumns {
        public static final String TABLE = "tasks";

        public static final String COL_TASK_TITLE = "title";
    }
}