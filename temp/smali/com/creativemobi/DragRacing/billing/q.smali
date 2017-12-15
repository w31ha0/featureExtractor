.class public final Lcom/creativemobi/DragRacing/billing/q;
.super Ljava/lang/Object;
.source "PurchaseDatabase.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private d:Lcom/creativemobi/DragRacing/billing/k;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "productId"

    aput-object v1, v0, v4

    const-string v1, "state"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "purchaseTime"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "developerPayload"

    aput-object v2, v0, v1

    sput-object v0, Lcom/creativemobi/DragRacing/billing/q;->a:[Ljava/lang/String;

    .line 61
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "quantity"

    aput-object v1, v0, v4

    sput-object v0, Lcom/creativemobi/DragRacing/billing/q;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/creativemobi/DragRacing/billing/k;

    invoke-direct {v0, p0, p1}, Lcom/creativemobi/DragRacing/billing/k;-><init>(Lcom/creativemobi/DragRacing/billing/q;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/creativemobi/DragRacing/billing/q;->d:Lcom/creativemobi/DragRacing/billing/k;

    .line 70
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/q;->d:Lcom/creativemobi/DragRacing/billing/k;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/billing/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/DragRacing/billing/q;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 71
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Lcom/creativemobi/DragRacing/billing/i;JLjava/lang/String;)I
    .locals 9

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "productId"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "state"

    invoke-virtual {p3}, Lcom/creativemobi/DragRacing/billing/i;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "purchaseTime"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "developerPayload"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/creativemobi/DragRacing/billing/q;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "history"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 132
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/q;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "history"

    sget-object v2, Lcom/creativemobi/DragRacing/billing/q;->a:[Ljava/lang/String;

    const-string v3, "productId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 134
    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 157
    :goto_0
    monitor-exit p0

    return v0

    .line 137
    :cond_0
    const/4 v1, 0x0

    .line 140
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 141
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 142
    invoke-static {v2}, Lcom/creativemobi/DragRacing/billing/i;->a(I)Lcom/creativemobi/DragRacing/billing/i;

    move-result-object v2

    .line 145
    sget-object v3, Lcom/creativemobi/DragRacing/billing/i;->a:Lcom/creativemobi/DragRacing/billing/i;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/creativemobi/DragRacing/billing/i;->c:Lcom/creativemobi/DragRacing/billing/i;

    if-ne v2, v3, :cond_1

    .line 146
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 151
    :cond_3
    invoke-virtual {p0, p2, v1}, Lcom/creativemobi/DragRacing/billing/q;->a(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    if-eqz v0, :cond_4

    .line 154
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v1

    .line 157
    goto :goto_0

    .line 153
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    .line 154
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 131
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/q;->d:Lcom/creativemobi/DragRacing/billing/k;

    invoke-virtual {v0}, Lcom/creativemobi/DragRacing/billing/k;->close()V

    .line 75
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 106
    if-nez p2, :cond_0

    .line 107
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/q;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "purchased"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 115
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 112
    const-string v1, "_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "quantity"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    iget-object v1, p0, Lcom/creativemobi/DragRacing/billing/q;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "purchased"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method public final b()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-object v0, p0, Lcom/creativemobi/DragRacing/billing/q;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "purchased"

    sget-object v2, Lcom/creativemobi/DragRacing/billing/q;->b:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
