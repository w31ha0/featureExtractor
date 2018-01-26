.class public Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/layout/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommonItem"
.end annotation


# instance fields
.field private checkbox:Landroid/widget/CheckBox;

.field private textViewTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheckbox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;->checkbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getTextViewTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;->textViewTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public setCheckbox(Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "checkbox"    # Landroid/widget/CheckBox;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;->checkbox:Landroid/widget/CheckBox;

    .line 444
    return-void
.end method

.method public setTextViewTitle(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textViewTitle"    # Landroid/widget/TextView;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;->textViewTitle:Landroid/widget/TextView;

    .line 436
    return-void
.end method
