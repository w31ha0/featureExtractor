.class public Ldatabase/DBConnectorWorkouts;
.super Ljava/lang/Object;
.source "DBConnectorWorkouts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldatabase/DBConnectorWorkouts$OpenHelper;
    }
.end annotation


# static fields
.field private static final CALORIES:Ljava/lang/String; = "calories"

.field private static final COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final DATABASE_NAME:Ljava/lang/String; = "workouts.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final JUMPS:Ljava/lang/String; = "jumps"

.field private static final NUM_COLUMN_CALORIES:I = 0x4

.field private static final NUM_COLUMN_ID:I = 0x0

.field private static final NUM_COLUMN_JUMPS:I = 0x3

.field private static final NUM_COLUMN_WORKOUT_END_TIME:I = 0x2

.field private static final NUM_COLUMN_WORKOUT_START_TIME:I = 0x1

.field private static final TABLE_NAME:Ljava/lang/String; = "MyWorkouts"

.field private static final WORKOUT_END_TIME:Ljava/lang/String; = "workout_end_time"

.field private static final WORKOUT_START_TIME:Ljava/lang/String; = "workout_start_time"


# instance fields
.field private mDataBase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ldatabase/DBConnectorWorkouts$OpenHelper;

    invoke-direct {v0, p0, p1}, Ldatabase/DBConnectorWorkouts$OpenHelper;-><init>(Ldatabase/DBConnectorWorkouts;Landroid/content/Context;)V

    .line 46
    .local v0, "mOpenHelper":Ldatabase/DBConnectorWorkouts$OpenHelper;
    invoke-virtual {v0}, Ldatabase/DBConnectorWorkouts$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Ldatabase/DBConnectorWorkouts;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 47
    return-void
.end method


# virtual methods
.method public delete(J)V
    .locals 6
    .param p1, "id"    # J

    .prologue
    .line 84
    iget-object v0, p0, Ldatabase/DBConnectorWorkouts;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MyWorkouts"

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method public deleteAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Ldatabase/DBConnectorWorkouts;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MyWorkouts"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method public delete_date(J)V
    .locals 6
    .param p1, "date"    # J

    .prologue
    .line 88
    iget-object v0, p0, Ldatabase/DBConnectorWorkouts;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MyWorkouts"

    const-string v2, "workout_start_time = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public insert(Ldatabase/MyWorkouts;)J
    .locals 4
    .param p1, "md"    # Ldatabase/MyWorkouts;

    .prologue
    .line 50
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 51
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "workout_start_time"

    invoke-virtual {p1}, Ldatabase/MyWorkouts;->getWorkoutStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 52
    const-string v1, "workout_end_time"

    invoke-virtual {p1}, Ldatabase/MyWorkouts;->getWorkoutEndTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 53
    const-string v1, "jumps"

    invoke-virtual {p1}, Ldatabase/MyWorkouts;->getJumps()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    const-string v1, "calories"

    invoke-virtual {p1}, Ldatabase/MyWorkouts;->getCalories()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    iget-object v1, p0, Ldatabase/DBConnectorWorkouts;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MyWorkouts"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public select(J)Ldatabase/MyWorkouts;
    .locals 13
    .param p1, "id"    # J

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Ldatabase/DBConnectorWorkouts;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MyWorkouts"

    const-string v3, "_id = ?"

    new-array v4, v12, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v10

    const-string v7, "workout_start_time"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 94
    .local v9, "mCursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 95
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 96
    .local v3, "workout_start_time":J
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 97
    .local v5, "workout_end_time":J
    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 98
    .local v7, "jumps":I
    const/4 v0, 0x4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 102
    .local v8, "calories":I
    new-instance v0, Ldatabase/MyWorkouts;

    move-wide v1, p1

    invoke-direct/range {v0 .. v8}, Ldatabase/MyWorkouts;-><init>(JJJII)V

    return-object v0
.end method

.method public selectAll()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ldatabase/MyWorkouts;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Ldatabase/DBConnectorWorkouts;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MyWorkouts"

    const-string v7, "workout_start_time"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 123
    .local v10, "mCursor":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v9, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldatabase/MyWorkouts;>;"
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 125
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 128
    .local v1, "id":J
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 129
    .local v3, "workout_start_time":J
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 130
    .local v5, "workout_end_time":J
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 131
    .local v7, "jumps":I
    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 132
    .local v8, "calories":I
    new-instance v0, Ldatabase/MyWorkouts;

    invoke-direct/range {v0 .. v8}, Ldatabase/MyWorkouts;-><init>(JJJII)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    .end local v1    # "id":J
    .end local v3    # "workout_start_time":J
    .end local v5    # "workout_end_time":J
    .end local v7    # "jumps":I
    .end local v8    # "calories":I
    :cond_1
    return-object v9
.end method

.method public select_start_time(J)Ldatabase/MyWorkouts;
    .locals 13
    .param p1, "start_time"    # J

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Ldatabase/DBConnectorWorkouts;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MyWorkouts"

    const-string v3, "workout_start_time = ?"

    new-array v4, v12, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v11

    const-string v7, "workout_start_time"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 108
    .local v9, "mCursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 109
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 110
    .local v1, "id":J
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 111
    .local v3, "workout_start_time":J
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 112
    .local v5, "workout_end_time":J
    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 113
    .local v7, "jumps":I
    const/4 v0, 0x4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 117
    .local v8, "calories":I
    new-instance v0, Ldatabase/MyWorkouts;

    invoke-direct/range {v0 .. v8}, Ldatabase/MyWorkouts;-><init>(JJJII)V

    return-object v0
.end method

.method public update(Ldatabase/MyWorkouts;)I
    .locals 8
    .param p1, "md"    # Ldatabase/MyWorkouts;

    .prologue
    .line 60
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 61
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "workout_start_time"

    invoke-virtual {p1}, Ldatabase/MyWorkouts;->getWorkoutStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 62
    const-string v1, "workout_end_time"

    invoke-virtual {p1}, Ldatabase/MyWorkouts;->getWorkoutEndTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 63
    const-string v1, "jumps"

    invoke-virtual {p1}, Ldatabase/MyWorkouts;->getJumps()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    const-string v1, "calories"

    invoke-virtual {p1}, Ldatabase/MyWorkouts;->getCalories()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    iget-object v1, p0, Ldatabase/DBConnectorWorkouts;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MyWorkouts"

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ldatabase/MyWorkouts;->getID()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public updateStartTime(JJII)I
    .locals 7
    .param p1, "WorkoutStartTime"    # J
    .param p3, "WorkoutEndTime"    # J
    .param p5, "Jumps"    # I
    .param p6, "Calories"    # I

    .prologue
    .line 70
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 71
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "workout_start_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 72
    const-string v1, "workout_end_time"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 73
    const-string v1, "jumps"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    const-string v1, "calories"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    iget-object v1, p0, Ldatabase/DBConnectorWorkouts;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MyWorkouts"

    const-string v3, "workout_start_time = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method
