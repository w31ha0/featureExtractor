.class public Lcom/tutusw/phonespeedup/DBHelper;
.super Ljava/lang/Object;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tutusw/phonespeedup/DBHelper$DBOpenHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "profiles.sqlite"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final TABLE_NAME:Ljava/lang/String; = "profiles"


# instance fields
.field private context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/tutusw/phonespeedup/DBHelper;->context:Landroid/content/Context;

    .line 21
    new-instance v0, Lcom/tutusw/phonespeedup/DBHelper$DBOpenHelper;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/DBHelper;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tutusw/phonespeedup/DBHelper$DBOpenHelper;-><init>(Landroid/content/Context;)V

    .line 22
    .local v0, "dbOpenHelper":Lcom/tutusw/phonespeedup/DBHelper$DBOpenHelper;
    invoke-virtual {v0}, Lcom/tutusw/phonespeedup/DBHelper$DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/tutusw/phonespeedup/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tutusw/phonespeedup/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/tutusw/phonespeedup/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 142
    :cond_0
    return-void
.end method

.method public deleteById(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/tutusw/phonespeedup/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "profiles"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method public getAllEnabledProfiles()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 85
    iget-object v0, p0, Lcom/tutusw/phonespeedup/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "profiles"

    .line 86
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v7

    const-string v3, "priority"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "enabled"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "profile_id"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "max"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "min"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "governor"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "param1"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "param2"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "param3"

    aput-object v4, v2, v3

    .line 87
    const-string v3, "enabled=?"

    .line 88
    new-array v4, v6, [Ljava/lang/String;

    const-string v6, "1"

    aput-object v6, v4, v7

    .line 91
    const-string v7, "priority DESC, max DESC, min DESC"

    move-object v6, v5

    .line 85
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getAllProfiles()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 75
    iget-object v0, p0, Lcom/tutusw/phonespeedup/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "profiles"

    .line 76
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "priority"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "enabled"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "profile_id"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "max"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "min"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "governor"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "param1"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string v5, "param2"

    aput-object v5, v2, v4

    const/16 v4, 0x9

    const-string v5, "param3"

    aput-object v5, v2, v4

    .line 81
    const-string v7, "priority DESC, max DESC, min DESC, enabled DESC"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 75
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getProfileDetails(I)Landroid/database/Cursor;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lcom/tutusw/phonespeedup/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "profiles"

    .line 107
    const-string v3, "_id=?"

    .line 108
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 105
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public insert(IIIIILjava/lang/String;III)V
    .locals 4
    .param p1, "priority"    # I
    .param p2, "enabled"    # I
    .param p3, "profile_id"    # I
    .param p4, "max"    # I
    .param p5, "min"    # I
    .param p6, "governor"    # Ljava/lang/String;
    .param p7, "param1"    # I
    .param p8, "param2"    # I
    .param p9, "param3"    # I

    .prologue
    .line 51
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 52
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "priority"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 53
    const-string v1, "enabled"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    const-string v1, "profile_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    const-string v1, "max"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    const-string v1, "min"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    const-string v1, "governor"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "param1"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    const-string v1, "param2"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    const-string v1, "param3"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    iget-object v1, p0, Lcom/tutusw/phonespeedup/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "profiles"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 62
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 145
    const-string v0, "DROP TABLE IF EXISTS profiles"

    .line 146
    .local v0, "RESET_STATEMENT":Ljava/lang/String;
    iget-object v1, p0, Lcom/tutusw/phonespeedup/DBHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS profiles"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 147
    return-void
.end method
