.class Ldatabase/DBConnectorWorkouts$OpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBConnectorWorkouts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldatabase/DBConnectorWorkouts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenHelper"
.end annotation


# instance fields
.field final synthetic this$0:Ldatabase/DBConnectorWorkouts;


# direct methods
.method constructor <init>(Ldatabase/DBConnectorWorkouts;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    iput-object p1, p0, Ldatabase/DBConnectorWorkouts$OpenHelper;->this$0:Ldatabase/DBConnectorWorkouts;

    .line 141
    const-string v0, "workouts.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 142
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 145
    const-string v0, "CREATE TABLE MyWorkouts (_id INTEGER PRIMARY KEY AUTOINCREMENT, workout_start_time LONG, workout_end_time LONG, jumps INTEGER, calories INTEGER); "

    .line 152
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 157
    const-string v0, "DROP TABLE IF EXISTS MyWorkouts"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, p1}, Ldatabase/DBConnectorWorkouts$OpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 159
    return-void
.end method
