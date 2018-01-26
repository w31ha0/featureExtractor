.class public Lcom/biznessapps/layout/adapters/ListItemHolder$LocationItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/layout/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationItem"
.end annotation


# instance fields
.field private textViewAddress:Landroid/widget/TextView;

.field private textViewCity:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextViewAddress()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$LocationItem;->textViewAddress:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextViewCity()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$LocationItem;->textViewCity:Landroid/widget/TextView;

    return-object v0
.end method

.method public setTextViewAddress(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textViewAddress"    # Landroid/widget/TextView;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$LocationItem;->textViewAddress:Landroid/widget/TextView;

    .line 269
    return-void
.end method

.method public setTextViewCity(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textViewCity"    # Landroid/widget/TextView;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$LocationItem;->textViewCity:Landroid/widget/TextView;

    .line 261
    return-void
.end method
