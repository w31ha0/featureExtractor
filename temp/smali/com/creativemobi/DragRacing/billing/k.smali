.class final Lcom/creativemobi/DragRacing/billing/k;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PurchaseDatabase.java"


# instance fields
.field private synthetic a:Lcom/creativemobi/DragRacing/billing/q;


# direct methods
.method public constructor <init>(Lcom/creativemobi/DragRacing/billing/q;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 173
    iput-object p1, p0, Lcom/creativemobi/DragRacing/billing/k;->a:Lcom/creativemobi/DragRacing/billing/q;

    .line 174
    const-string v0, "purchase.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 175
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 198
    const-string v0, "CREATE TABLE history(_id TEXT PRIMARY KEY, state INTEGER, productId TEXT, developerPayload TEXT, purchaseTime INTEGER)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 204
    const-string v0, "CREATE TABLE purchased(_id TEXT PRIMARY KEY, quantity INTEGER)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 207
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 179
    invoke-static {p1}, Lcom/creativemobi/DragRacing/billing/k;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 180
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    .line 187
    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 188
    const-string v0, "PurchaseDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database upgrade from old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v0, "DROP TABLE IF EXISTS history"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 191
    const-string v0, "DROP TABLE IF EXISTS purchased"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    invoke-static {p1}, Lcom/creativemobi/DragRacing/billing/k;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 195
    :cond_0
    return-void
.end method
