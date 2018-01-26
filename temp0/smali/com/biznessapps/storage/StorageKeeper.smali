.class public Lcom/biznessapps/storage/StorageKeeper;
.super Ljava/lang/Object;
.source "StorageKeeper.java"


# static fields
.field private static instance:Lcom/biznessapps/storage/StorageKeeper;


# instance fields
.field private dbAccessor:Lcom/biznessapps/storage/StorageAccessor;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/biznessapps/storage/StorageAccessor;

    invoke-direct {v0, p1}, Lcom/biznessapps/storage/StorageAccessor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    .line 32
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    sget-object v0, Lcom/biznessapps/storage/StorageKeeper;->instance:Lcom/biznessapps/storage/StorageKeeper;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/biznessapps/storage/StorageKeeper;

    invoke-direct {v0, p0}, Lcom/biznessapps/storage/StorageKeeper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/biznessapps/storage/StorageKeeper;->instance:Lcom/biznessapps/storage/StorageKeeper;

    .line 28
    :cond_0
    return-void
.end method

.method public static instance()Lcom/biznessapps/storage/StorageKeeper;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/biznessapps/storage/StorageKeeper;->instance:Lcom/biznessapps/storage/StorageKeeper;

    return-object v0
.end method


# virtual methods
.method public addCoupons(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/CouponItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "couponsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/CouponItem;>;"
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v1, p1}, Lcom/biznessapps/storage/StorageAccessor;->addCoupons(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_0
.end method

.method public addNotes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fragments/notepad/NotepadItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "noteList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fragments/notepad/NotepadItem;>;"
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v1, p1}, Lcom/biznessapps/storage/StorageAccessor;->addNote(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_0
.end method

.method public delNote(Lcom/biznessapps/fragments/notepad/NotepadItem;)V
    .locals 3
    .param p1, "currentNote"    # Lcom/biznessapps/fragments/notepad/NotepadItem;

    .prologue
    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {p1}, Lcom/biznessapps/fragments/notepad/NotepadItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/storage/StorageAccessor;->delNote(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCouponData(Ljava/lang/String;)Lcom/biznessapps/model/CouponItem;
    .locals 1
    .param p1, "couponId"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v0, p1}, Lcom/biznessapps/storage/StorageAccessor;->getCoupon(Ljava/lang/String;)Lcom/biznessapps/model/CouponItem;

    move-result-object v0

    return-object v0
.end method

.method public getLoyaltyItem(Ljava/lang/String;)Lcom/biznessapps/model/LoyaltyItem;
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v0, p1}, Lcom/biznessapps/storage/StorageAccessor;->getLoyaltyItem(Ljava/lang/String;)Lcom/biznessapps/model/LoyaltyItem;

    move-result-object v0

    return-object v0
.end method

.method public getNotes()Ljava/util/List;
    .locals 1
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
    .line 35
    iget-object v0, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageAccessor;->requestAllNotes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public saveLoyaltyItem(Lcom/biznessapps/model/LoyaltyItem;)V
    .locals 2
    .param p1, "loyaltyItem"    # Lcom/biznessapps/model/LoyaltyItem;

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/storage/StorageKeeper;->dbAccessor:Lcom/biznessapps/storage/StorageAccessor;

    invoke-virtual {v1, p1}, Lcom/biznessapps/storage/StorageAccessor;->saveLoayltyItem(Lcom/biznessapps/model/LoyaltyItem;)V
    :try_end_0
    .catch Lcom/biznessapps/storage/StorageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Lcom/biznessapps/storage/StorageException;
    invoke-virtual {v0}, Lcom/biznessapps/storage/StorageException;->printStackTrace()V

    goto :goto_0
.end method
