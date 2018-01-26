.class public Lcom/biznessapps/storage/StorageAccessor;
.super Ljava/lang/Object;
.source "StorageAccessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/storage/StorageAccessor$DbHelper;
    }
.end annotation


# static fields
.field private static final COLUMN_CHECKIN_TARGET:Ljava/lang/String; = "checkinTarget"

.field private static final COLUMN_ID:Ljava/lang/String; = "id"

.field private static final COLUMN_LAST_CHECKIN_TIME:Ljava/lang/String; = "lastCheckinTime"

.field private static final COLUMN_LAST_REDEEMED_TIME:Ljava/lang/String; = "lastRedeemedTime"

.field private static final COLUMN_LOYALTY_COUPON_APPROVED:Ljava/lang/String; = "loyaltyCouponApproved"

.field private static final COLUMN_LOYALTY_COUPON_CODE:Ljava/lang/String; = "loyaltyCouponCode"

.field private static final COLUMN_LOYALTY_COUPON_ID:Ljava/lang/String; = "loyaltyCouponId"

.field private static final COLUMN_LOYALTY_COUPON_LOCKED:Ljava/lang/String; = "loyaltyCouponLocked"

.field private static final COLUMN_LOYALTY_IMAGE_URL:Ljava/lang/String; = "loyaltyImageUrl"

.field private static final COLUMN_LOYALTY_ITEM_ID:Ljava/lang/String; = "loyaltyItemId"

.field private static final COUPONS_TABLE:Ljava/lang/String; = "coupons_table"

.field private static final DATABASE_NAME:Ljava/lang/String; = "ba_storage.db"

.field private static final DB_VERSION:I = 0x2

.field private static final LOYALTY_TABLE:Ljava/lang/String; = "loyalty_table"

.field private static final NOTEPAD_COLUMN_CONTENT:Ljava/lang/String; = "content"

.field private static final NOTEPAD_COLUMN_DATE:Ljava/lang/String; = "date"

.field private static final NOTEPAD_COLUMN_ID:Ljava/lang/String; = "id"

.field private static final NOTEPAD_COLUMN_TITLE:Ljava/lang/String; = "title"

.field private static final NOTEPAD_TABLE:Ljava/lang/String; = "notepad_table"

.field private static final REQUEST_CREATE_COUPONS_CUT_TABLE:Ljava/lang/String; = "CREATE TABLE \"coupons_table\" (\"id\" INTEGER PRIMARY KEY,\"checkinTarget\" INTEGER,\"lastCheckinTime\" LONG,\"lastRedeemedTime\" LONG)"

.field private static final REQUEST_CREATE_LOYALTY_TABLE:Ljava/lang/String; = "CREATE TABLE \"loyalty_table\" (\"id\" INTEGER PRIMARY KEY,\"loyaltyItemId\" TEXT,\"loyaltyCouponId\" TEXT,\"loyaltyImageUrl\" TEXT,\"loyaltyCouponCode\" TEXT,\"loyaltyCouponLocked\" INTEGER,\"loyaltyCouponApproved\" INTEGER)"

.field private static final REQUEST_CREATE_NOTEPAD_TABLE:Ljava/lang/String; = "CREATE TABLE \"notepad_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"title\" TEXT,\"content\" TEXT,\"date\" LONG)"

.field private static final REQUEST_DROP_COUPONS_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS coupons_table"

.field private static final REQUEST_DROP_LOYALTY_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS loyalty_table"

.field private static final REQUEST_DROP_MESSAGES_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS messages_table"

.field private static final REQUEST_DROP_NOTEPAD_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS notepad_table"


# instance fields
.field private base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-direct {p0, p1}, Lcom/biznessapps/storage/StorageAccessor;->createDB(Landroid/content/Context;)V

    .line 145
    return-void
.end method

.method private static final REQUEST_DELETE_COUPON(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "couponId"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM coupons_table WHERE id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final REQUEST_DELETE_LOYALTY_ITEM(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "loyaltyId"    # Ljava/lang/String;

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM loyalty_table WHERE loyaltyItemId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final REQUEST_DELETE_NOTE(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "noteId"    # Ljava/lang/String;

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM notepad_table WHERE id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final REQUEST_GET_ALL_NOTES()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "SELECT id, title, content, date FROM notepad_table"

    return-object v0
.end method

.method private static final REQUEST_GET_COUPON(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "couponId"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT id, checkinTarget, lastCheckinTime, lastRedeemedTime FROM coupons_table WHERE id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final REQUEST_GET_LOYALTY_ITEM(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "itemId"    # Ljava/lang/String;

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT loyaltyItemId, loyaltyCouponId, loyaltyImageUrl, loyaltyCouponCode, loyaltyCouponLocked, loyaltyCouponApproved FROM loyalty_table WHERE loyaltyItemId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final REQUEST_GET_NOTE(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "noteId"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT id, title, content, date FROM notepad_table WHERE id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized closeDB()V
    .locals 1

    .prologue
    .line 416
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    :cond_0
    monitor-exit p0

    return-void

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createDB(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 403
    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "!!!!!!!!!!!! open"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 404
    new-instance v1, Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    const-string v2, "ba_storage.db"

    invoke-direct {v1, p1, v2}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    .line 405
    iget-object v1, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v1}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 406
    iget-object v1, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v1}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "DB"

    const-string v2, "Failed to open/create database!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addCoupons(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/CouponItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 376
    .local p1, "couponsToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/CouponItem;>;"
    iget-object v5, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v5}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 378
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    .line 396
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 397
    invoke-direct {p0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB()V

    .line 399
    :goto_0
    return-void

    .line 381
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 382
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 383
    .local v4, "values":Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/model/CouponItem;

    .line 384
    .local v3, "item":Lcom/biznessapps/model/CouponItem;
    invoke-virtual {v3}, Lcom/biznessapps/model/CouponItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_DELETE_COUPON(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 385
    const-string v5, "id"

    invoke-virtual {v3}, Lcom/biznessapps/model/CouponItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v5, "checkinTarget"

    invoke-virtual {v3}, Lcom/biznessapps/model/CouponItem;->getCheckinTarget()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 387
    const-string v5, "lastCheckinTime"

    invoke-virtual {v3}, Lcom/biznessapps/model/CouponItem;->getLastCheckinTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 388
    const-string v5, "lastRedeemedTime"

    invoke-virtual {v3}, Lcom/biznessapps/model/CouponItem;->getLastRedeemedTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 389
    const-string v5, "coupons_table"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 390
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 393
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "item":Lcom/biznessapps/model/CouponItem;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 394
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Lcom/biznessapps/storage/StorageException;

    const-string v6, "error with adding coupon\'s data to the storage"

    invoke-direct {v5, v6}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 396
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 397
    invoke-direct {p0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB()V

    throw v5

    .line 392
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 396
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 397
    invoke-direct {p0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB()V

    goto :goto_0
.end method

.method public addNote(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fragments/notepad/NotepadItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 350
    .local p1, "notesToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fragments/notepad/NotepadItem;>;"
    iget-object v5, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v5}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 351
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 356
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 357
    .local v4, "values":Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/fragments/notepad/NotepadItem;

    .line 358
    .local v3, "item":Lcom/biznessapps/fragments/notepad/NotepadItem;
    invoke-virtual {v3}, Lcom/biznessapps/fragments/notepad/NotepadItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_DELETE_NOTE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 359
    const-string v5, "id"

    invoke-virtual {v3}, Lcom/biznessapps/fragments/notepad/NotepadItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v5, "title"

    invoke-virtual {v3}, Lcom/biznessapps/fragments/notepad/NotepadItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v5, "content"

    invoke-virtual {v3}, Lcom/biznessapps/fragments/notepad/NotepadItem;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v5, "date"

    invoke-virtual {v3}, Lcom/biznessapps/fragments/notepad/NotepadItem;->getDate()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 363
    const-string v5, "notepad_table"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 364
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 367
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "item":Lcom/biznessapps/fragments/notepad/NotepadItem;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Lcom/biznessapps/storage/StorageException;

    const-string v6, "error with adding Note\'s data to the storage"

    invoke-direct {v5, v6}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 371
    invoke-direct {p0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB()V

    throw v5

    .line 366
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 370
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 371
    invoke-direct {p0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB()V

    goto :goto_0
.end method

.method public delNote(Ljava/lang/String;)V
    .locals 4
    .param p1, "noteId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    .line 333
    iget-object v2, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v2}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 334
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez p1, :cond_0

    .line 347
    :goto_0
    return-void

    .line 338
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 339
    invoke-static {p1}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_DELETE_NOTE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 345
    invoke-direct {p0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB()V

    goto :goto_0

    .line 341
    :catch_0
    move-exception v1

    .line 342
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Lcom/biznessapps/storage/StorageException;

    const-string v3, "error with deleting Note\'s data from the storage"

    invoke-direct {v2, v3}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 345
    invoke-direct {p0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB()V

    throw v2
.end method

.method public getCoupon(Ljava/lang/String;)Lcom/biznessapps/model/CouponItem;
    .locals 8
    .param p1, "couponId"    # Ljava/lang/String;

    .prologue
    .line 300
    const/4 v2, 0x0

    .line 301
    .local v2, "item":Lcom/biznessapps/model/CouponItem;
    iget-object v5, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v5}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 304
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 305
    invoke-static {p1}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_GET_COUPON(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 307
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 308
    const-string v5, "DbHelper"

    const-string v6, "cursor = null"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 327
    invoke-direct {p0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB()V

    move-object v3, v2

    .line 329
    .end local v2    # "item":Lcom/biznessapps/model/CouponItem;
    .local v3, "item":Lcom/biznessapps/model/CouponItem;
    :goto_0
    return-object v3

    .line 312
    .end local v3    # "item":Lcom/biznessapps/model/CouponItem;
    .restart local v2    # "item":Lcom/biznessapps/model/CouponItem;
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    .line 314
    .local v4, "working":Z
    if-eqz v4, :cond_1

    .line 315
    new-instance v3, Lcom/biznessapps/model/CouponItem;

    invoke-direct {v3}, Lcom/biznessapps/model/CouponItem;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    .end local v2    # "item":Lcom/biznessapps/model/CouponItem;
    .restart local v3    # "item":Lcom/biznessapps/model/CouponItem;
    const/4 v5, 0x0

    :try_start_2
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/biznessapps/model/CouponItem;->setId(Ljava/lang/String;)V

    .line 317
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/biznessapps/model/CouponItem;->setCheckinTarget(I)V

    .line 318
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/biznessapps/model/CouponItem;->setLastCheckinTime(J)V

    .line 319
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/biznessapps/model/CouponItem;->setLastRedeemedTime(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v3

    .line 322
    .end local v3    # "item":Lcom/biznessapps/model/CouponItem;
    .restart local v2    # "item":Lcom/biznessapps/model/CouponItem;
    :cond_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 323
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 326
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 327
    invoke-direct {p0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB()V

    move-object v3, v2

    .line 329
    .end local v2    # "item":Lcom/biznessapps/model/CouponItem;
    .restart local v3    # "item":Lcom/biznessapps/model/CouponItem;
    goto :goto_0

    .line 326
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v3    # "item":Lcom/biznessapps/model/CouponItem;
    .end local v4    # "working":Z
    .restart local v2    # "item":Lcom/biznessapps/model/CouponItem;
    :catchall_0
    move-exception v5

    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 327
    invoke-direct {p0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB()V

    throw v5

    .line 326
    .end local v2    # "item":Lcom/biznessapps/model/CouponItem;
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "item":Lcom/biznessapps/model/CouponItem;
    .restart local v4    # "working":Z
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "item":Lcom/biznessapps/model/CouponItem;
    .restart local v2    # "item":Lcom/biznessapps/model/CouponItem;
    goto :goto_1
.end method

.method public getLoyaltyItem(Ljava/lang/String;)Lcom/biznessapps/model/LoyaltyItem;
    .locals 12
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 222
    const/4 v3, 0x0

    .line 223
    .local v3, "item":Lcom/biznessapps/model/LoyaltyItem;
    iget-object v8, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v8}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 226
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 227
    invoke-static {p1}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_GET_LOYALTY_ITEM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual {v2, v8, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 229
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 230
    const-string v8, "DbHelper"

    const-string v9, "cursor = null"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 263
    invoke-direct {p0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB()V

    move-object v4, v3

    .line 265
    .end local v3    # "item":Lcom/biznessapps/model/LoyaltyItem;
    .local v4, "item":Lcom/biznessapps/model/LoyaltyItem;
    :goto_0
    return-object v4

    .line 234
    .end local v4    # "item":Lcom/biznessapps/model/LoyaltyItem;
    .restart local v3    # "item":Lcom/biznessapps/model/LoyaltyItem;
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    .line 235
    .local v7, "working":Z
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 237
    .local v6, "size":I
    if-eqz v7, :cond_4

    if-lez v6, :cond_4

    .line 238
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v5, "loyaltyCards":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;>;"
    new-instance v4, Lcom/biznessapps/model/LoyaltyItem;

    invoke-direct {v4}, Lcom/biznessapps/model/LoyaltyItem;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    .end local v3    # "item":Lcom/biznessapps/model/LoyaltyItem;
    .restart local v4    # "item":Lcom/biznessapps/model/LoyaltyItem;
    :goto_1
    if-eqz v7, :cond_3

    .line 241
    :try_start_2
    new-instance v0, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;

    invoke-direct {v0}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;-><init>()V

    .line 242
    .local v0, "cardItem":Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/model/LoyaltyItem;->setId(Ljava/lang/String;)V

    .line 243
    const/4 v8, 0x2

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/biznessapps/model/LoyaltyItem;->setImageUrl(Ljava/lang/String;)V

    .line 245
    const/4 v8, 0x1

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->setCouponId(Ljava/lang/String;)V

    .line 246
    const/4 v8, 0x3

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->setCouponCode(Ljava/lang/String;)V

    .line 249
    const/4 v8, 0x4

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v9, :cond_1

    move v8, v9

    :goto_2
    invoke-virtual {v0, v8}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->setLocked(Z)V

    .line 250
    const/4 v8, 0x5

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v9, :cond_2

    move v8, v9

    :goto_3
    invoke-virtual {v0, v8}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->setApproved(Z)V

    .line 252
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    .line 254
    goto :goto_1

    :cond_1
    move v8, v10

    .line 249
    goto :goto_2

    :cond_2
    move v8, v10

    .line 250
    goto :goto_3

    .line 255
    .end local v0    # "cardItem":Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;
    :cond_3
    invoke-virtual {v4, v5}, Lcom/biznessapps/model/LoyaltyItem;->setCoupons(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, v4

    .line 258
    .end local v4    # "item":Lcom/biznessapps/model/LoyaltyItem;
    .end local v5    # "loyaltyCards":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;>;"
    .restart local v3    # "item":Lcom/biznessapps/model/LoyaltyItem;
    :cond_4
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 259
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 262
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 263
    invoke-direct {p0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB()V

    move-object v4, v3

    .line 265
    .end local v3    # "item":Lcom/biznessapps/model/LoyaltyItem;
    .restart local v4    # "item":Lcom/biznessapps/model/LoyaltyItem;
    goto :goto_0

    .line 262
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v4    # "item":Lcom/biznessapps/model/LoyaltyItem;
    .end local v6    # "size":I
    .end local v7    # "working":Z
    .restart local v3    # "item":Lcom/biznessapps/model/LoyaltyItem;
    :catchall_0
    move-exception v8

    :goto_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 263
    invoke-direct {p0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB()V

    throw v8

    .line 262
    .end local v3    # "item":Lcom/biznessapps/model/LoyaltyItem;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "item":Lcom/biznessapps/model/LoyaltyItem;
    .restart local v5    # "loyaltyCards":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;>;"
    .restart local v6    # "size":I
    .restart local v7    # "working":Z
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "item":Lcom/biznessapps/model/LoyaltyItem;
    .restart local v3    # "item":Lcom/biznessapps/model/LoyaltyItem;
    goto :goto_4
.end method

.method public getNote(Ljava/lang/String;)Lcom/biznessapps/fragments/notepad/NotepadItem;
    .locals 8
    .param p1, "noteId"    # Ljava/lang/String;

    .prologue
    .line 188
    const/4 v2, 0x0

    .line 189
    .local v2, "item":Lcom/biznessapps/fragments/notepad/NotepadItem;
    iget-object v5, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v5}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 192
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 193
    invoke-static {p1}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_GET_NOTE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 195
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 196
    const-string v5, "DbHelper"

    const-string v6, "cursor = null"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 215
    invoke-direct {p0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB()V

    move-object v3, v2

    .line 218
    .end local v2    # "item":Lcom/biznessapps/fragments/notepad/NotepadItem;
    .local v3, "item":Lcom/biznessapps/fragments/notepad/NotepadItem;
    :goto_0
    return-object v3

    .line 200
    .end local v3    # "item":Lcom/biznessapps/fragments/notepad/NotepadItem;
    .restart local v2    # "item":Lcom/biznessapps/fragments/notepad/NotepadItem;
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    .line 202
    .local v4, "working":Z
    if-eqz v4, :cond_1

    .line 203
    new-instance v3, Lcom/biznessapps/fragments/notepad/NotepadItem;

    invoke-direct {v3}, Lcom/biznessapps/fragments/notepad/NotepadItem;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    .end local v2    # "item":Lcom/biznessapps/fragments/notepad/NotepadItem;
    .restart local v3    # "item":Lcom/biznessapps/fragments/notepad/NotepadItem;
    const/4 v5, 0x0

    :try_start_2
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/biznessapps/fragments/notepad/NotepadItem;->setId(Ljava/lang/String;)V

    .line 205
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/biznessapps/fragments/notepad/NotepadItem;->setTitle(Ljava/lang/String;)V

    .line 206
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/biznessapps/fragments/notepad/NotepadItem;->setContent(Ljava/lang/String;)V

    .line 207
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/biznessapps/fragments/notepad/NotepadItem;->setDate(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v3

    .line 210
    .end local v3    # "item":Lcom/biznessapps/fragments/notepad/NotepadItem;
    .restart local v2    # "item":Lcom/biznessapps/fragments/notepad/NotepadItem;
    :cond_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 211
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 215
    invoke-direct {p0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB()V

    move-object v3, v2

    .line 218
    .end local v2    # "item":Lcom/biznessapps/fragments/notepad/NotepadItem;
    .restart local v3    # "item":Lcom/biznessapps/fragments/notepad/NotepadItem;
    goto :goto_0

    .line 214
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v3    # "item":Lcom/biznessapps/fragments/notepad/NotepadItem;
    .end local v4    # "working":Z
    .restart local v2    # "item":Lcom/biznessapps/fragments/notepad/NotepadItem;
    :catchall_0
    move-exception v5

    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 215
    invoke-direct {p0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB()V

    throw v5

    .line 214
    .end local v2    # "item":Lcom/biznessapps/fragments/notepad/NotepadItem;
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "item":Lcom/biznessapps/fragments/notepad/NotepadItem;
    .restart local v4    # "working":Z
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "item":Lcom/biznessapps/fragments/notepad/NotepadItem;
    .restart local v2    # "item":Lcom/biznessapps/fragments/notepad/NotepadItem;
    goto :goto_1
.end method

.method public requestAllNotes()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fragments/notepad/NotepadItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 148
    iget-object v6, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v6}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 150
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 151
    invoke-static {}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_GET_ALL_NOTES()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 153
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 154
    const-string v6, "DbHelper"

    const-string v7, "cursor = null"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    return-object v2

    .line 158
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    .line 159
    .local v5, "working":Z
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 161
    .local v4, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fragments/notepad/NotepadItem;>;"
    if-eqz v5, :cond_1

    if-lez v4, :cond_1

    .line 163
    const/4 v3, 0x0

    .line 164
    .local v3, "item":Lcom/biznessapps/fragments/notepad/NotepadItem;
    :goto_1
    if-eqz v5, :cond_1

    .line 165
    new-instance v3, Lcom/biznessapps/fragments/notepad/NotepadItem;

    .end local v3    # "item":Lcom/biznessapps/fragments/notepad/NotepadItem;
    invoke-direct {v3}, Lcom/biznessapps/fragments/notepad/NotepadItem;-><init>()V

    .line 166
    .restart local v3    # "item":Lcom/biznessapps/fragments/notepad/NotepadItem;
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/fragments/notepad/NotepadItem;->setId(Ljava/lang/String;)V

    .line 167
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/fragments/notepad/NotepadItem;->setTitle(Ljava/lang/String;)V

    .line 168
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/biznessapps/fragments/notepad/NotepadItem;->setContent(Ljava/lang/String;)V

    .line 169
    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/biznessapps/fragments/notepad/NotepadItem;->setDate(J)V

    .line 171
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    goto :goto_1

    .line 176
    .end local v3    # "item":Lcom/biznessapps/fragments/notepad/NotepadItem;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 178
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 182
    invoke-direct {p0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB()V

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 182
    invoke-direct {p0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB()V

    throw v6
.end method

.method public saveLoayltyItem(Lcom/biznessapps/model/LoyaltyItem;)V
    .locals 9
    .param p1, "loyaltyItem"    # Lcom/biznessapps/model/LoyaltyItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/biznessapps/storage/StorageException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 271
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/biznessapps/model/LoyaltyItem;->getCoupons()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lcom/biznessapps/model/LoyaltyItem;->getCoupons()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 272
    iget-object v5, p0, Lcom/biznessapps/storage/StorageAccessor;->base:Lcom/biznessapps/storage/StorageAccessor$DbHelper;

    invoke-virtual {v5}, Lcom/biznessapps/storage/StorageAccessor$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 274
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 277
    invoke-virtual {p1}, Lcom/biznessapps/model/LoyaltyItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/biznessapps/storage/StorageAccessor;->REQUEST_DELETE_LOYALTY_ITEM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 278
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 279
    .local v4, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/biznessapps/model/LoyaltyItem;->getCoupons()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;

    .line 280
    .local v0, "card":Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;
    const-string v5, "loyaltyItemId"

    invoke-virtual {p1}, Lcom/biznessapps/model/LoyaltyItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v5, "loyaltyCouponId"

    invoke-virtual {v0}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->getCouponId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v5, "loyaltyImageUrl"

    invoke-virtual {p1}, Lcom/biznessapps/model/LoyaltyItem;->getImageUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v5, "loyaltyCouponCode"

    invoke-virtual {v0}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->getCouponCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v8, "loyaltyCouponLocked"

    invoke-virtual {v0}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    const-string v8, "loyaltyCouponApproved"

    invoke-virtual {v0}, Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;->isApproved()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    const-string v5, "loyalty_table"

    const/4 v8, 0x0

    invoke-virtual {v1, v5, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 287
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 290
    .end local v0    # "card":Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 291
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Lcom/biznessapps/storage/StorageException;

    const-string v6, "error with adding coupon\'s data to the storage"

    invoke-direct {v5, v6}, Lcom/biznessapps/storage/StorageException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 294
    invoke-direct {p0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB()V

    throw v5

    .restart local v0    # "card":Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    move v5, v7

    .line 284
    goto :goto_1

    :cond_1
    move v5, v7

    .line 285
    goto :goto_2

    .line 289
    .end local v0    # "card":Lcom/biznessapps/model/LoyaltyItem$LoyaltyCardItem;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 294
    invoke-direct {p0}, Lcom/biznessapps/storage/StorageAccessor;->closeDB()V

    .line 297
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_3
    return-void
.end method
