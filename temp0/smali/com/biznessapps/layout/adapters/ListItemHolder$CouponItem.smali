.class public Lcom/biznessapps/layout/adapters/ListItemHolder$CouponItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/layout/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CouponItem"
.end annotation


# instance fields
.field private textViewCheckin:Landroid/widget/TextView;

.field private textViewText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextViewCheckin()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$CouponItem;->textViewCheckin:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextViewText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$CouponItem;->textViewText:Landroid/widget/TextView;

    return-object v0
.end method

.method public setTextViewCheckin(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textViewCheckin"    # Landroid/widget/TextView;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$CouponItem;->textViewCheckin:Landroid/widget/TextView;

    .line 199
    return-void
.end method

.method public setTextViewText(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textViewText"    # Landroid/widget/TextView;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$CouponItem;->textViewText:Landroid/widget/TextView;

    .line 191
    return-void
.end method
