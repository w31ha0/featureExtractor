.class public Ldatabase/DBConnectorWeight;
.super Ljava/lang/Object;
.source "DBConnectorWeight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldatabase/DBConnectorWeight$OpenHelper;
    }
.end annotation


# static fields
.field private static final COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final DATABASE_NAME:Ljava/lang/String; = "weight.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final NUM_COLUMN_ID:I = 0x0

.field private static final NUM_COLUMN_TIME:I = 0x1

.field private static final NUM_COLUMN_WEIGHT:I = 0x2

.field private static final TABLE_NAME:Ljava/lang/String; = "MyWeight"

.field private static final TIME:Ljava/lang/String; = "time"

.field private static final WEIGHT:Ljava/lang/String; = "weight"


# instance fields
.field private mDataBase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ldatabase/DBConnectorWeight$OpenHelper;

    invoke-direct {v0, p0, p1}, Ldatabase/DBConnectorWeight$OpenHelper;-><init>(Ldatabase/DBConnectorWeight;Landroid/content/Context;)V

    .line 33
    .local v0, "mOpenHelper":Ldatabase/DBConnectorWeight$OpenHelper;
    invoke-virtual {v0}, Ldatabase/DBConnectorWeight$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Ldatabase/DBConnectorWeight;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 34
    return-void
.end method


# virtual methods
.method public delete(J)V
    .locals 6
    .param p1, "id"    # J

    .prologue
    .line 65
    iget-object v0, p0, Ldatabase/DBConnectorWeight;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MyWeight"

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method public deleteAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Ldatabase/DBConnectorWeight;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MyWeight"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public delete_date(J)V
    .locals 6
    .param p1, "date"    # J

    .prologue
    .line 69
    iget-object v0, p0, Ldatabase/DBConnectorWeight;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MyWeight"

    const-string v2, "time = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public insert(Ldatabase/MyWeight;)J
    .locals 4
    .param p1, "md"    # Ldatabase/MyWeight;

    .prologue
    .line 37
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 38
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "time"

    invoke-virtual {p1}, Ldatabase/MyWeight;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 39
    const-string v1, "weight"

    invoke-virtual {p1}, Ldatabase/MyWeight;->getWeight()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 41
    iget-object v1, p0, Ldatabase/DBConnectorWeight;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MyWeight"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public select(J)Ldatabase/MyWeight;
    .locals 11
    .param p1, "id"    # J

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Ldatabase/DBConnectorWeight;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MyWeight"

    const-string v3, "_id = ?"

    new-array v4, v10, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v7

    const-string v7, "time"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 75
    .local v8, "mCursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 76
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 77
    .local v3, "time":J
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 79
    .local v5, "weight":J
    new-instance v0, Ldatabase/MyWeight;

    move-wide v1, p1

    invoke-direct/range {v0 .. v6}, Ldatabase/MyWeight;-><init>(JJJ)V

    return-object v0
.end method

.method public selectAll()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ldatabase/MyWeight;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v0, p0, Ldatabase/DBConnectorWeight;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MyWeight"

    const-string v7, "time"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 97
    .local v9, "mCursor":Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v8, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldatabase/MyWeight;>;"
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 99
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 102
    .local v1, "id":J
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 103
    .local v3, "time":J
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 104
    .local v5, "weight":J
    new-instance v0, Ldatabase/MyWeight;

    invoke-direct/range {v0 .. v6}, Ldatabase/MyWeight;-><init>(JJJ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    .end local v1    # "id":J
    .end local v3    # "time":J
    .end local v5    # "weight":J
    :cond_1
    return-object v8
.end method

.method public select_date(J)Z
    .locals 11
    .param p1, "time_long"    # J

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Ldatabase/DBConnectorWeight;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MyWeight"

    const-string v3, "time = ?"

    new-array v4, v9, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const-string v7, "time"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 85
    .local v8, "mCursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    .line 88
    :goto_0
    return v0

    :cond_0
    move v0, v10

    goto :goto_0
.end method

.method public update(Ldatabase/MyWeight;)I
    .locals 8
    .param p1, "md"    # Ldatabase/MyWeight;

    .prologue
    .line 45
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 46
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "time"

    invoke-virtual {p1}, Ldatabase/MyWeight;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 47
    const-string v1, "weight"

    invoke-virtual {p1}, Ldatabase/MyWeight;->getWeight()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 49
    iget-object v1, p0, Ldatabase/DBConnectorWeight;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MyWeight"

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ldatabase/MyWeight;->getID()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public update_date(Ldatabase/MyWeight;)I
    .locals 8
    .param p1, "md"    # Ldatabase/MyWeight;

    .prologue
    .line 53
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 54
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "time"

    invoke-virtual {p1}, Ldatabase/MyWeight;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 55
    const-string v1, "weight"

    invoke-virtual {p1}, Ldatabase/MyWeight;->getWeight()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 57
    iget-object v1, p0, Ldatabase/DBConnectorWeight;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MyWeight"

    const-string v3, "time = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ldatabase/MyWeight;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method
