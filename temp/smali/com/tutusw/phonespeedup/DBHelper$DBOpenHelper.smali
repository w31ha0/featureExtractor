.class Lcom/tutusw/phonespeedup/DBHelper$DBOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutusw/phonespeedup/DBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DBOpenHelper"
.end annotation


# static fields
.field private static final CREATE_STATEMENT:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS profiles (_id INTEGER, priority INTEGER, enabled INTEGER, profile_id INTEGER, max INTEGER, min INTEGER, governor TEXT, param1 INTEGER, param2 INTEGER, param3 INTEGER, PRIMARY KEY (_id));"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    const-string v0, "profiles.sqlite"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 157
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 161
    const-string v0, "CREATE TABLE IF NOT EXISTS profiles (_id INTEGER, priority INTEGER, enabled INTEGER, profile_id INTEGER, max INTEGER, min INTEGER, governor TEXT, param1 INTEGER, param2 INTEGER, param3 INTEGER, PRIMARY KEY (_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 197
    return-void
.end method
