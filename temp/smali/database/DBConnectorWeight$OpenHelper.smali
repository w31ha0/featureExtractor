.class Ldatabase/DBConnectorWeight$OpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBConnectorWeight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldatabase/DBConnectorWeight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenHelper"
.end annotation


# instance fields
.field final synthetic this$0:Ldatabase/DBConnectorWeight;


# direct methods
.method constructor <init>(Ldatabase/DBConnectorWeight;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    iput-object p1, p0, Ldatabase/DBConnectorWeight$OpenHelper;->this$0:Ldatabase/DBConnectorWeight;

    .line 113
    const-string v0, "weight.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 114
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 117
    const-string v0, "CREATE TABLE MyWeight (_id INTEGER PRIMARY KEY AUTOINCREMENT, time LONG, weight LONG); "

    .line 122
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 127
    const-string v0, "DROP TABLE IF EXISTS MyWeight"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, p1}, Ldatabase/DBConnectorWeight$OpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 129
    return-void
.end method
