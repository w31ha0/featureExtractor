.class public Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;
.super Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;
.source "ItemDecorationBarkerGrid.java"


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/netflix/mediaclient/util/ItemDecorationUniformPadding;-><init>(II)V

    .line 13
    iput-object p1, p0, Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;->context:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public getAllSpaceWidth()I
    .locals 2

    .prologue
    .line 20
    iget v0, p0, Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;->numColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;->padding:I

    mul-int/2addr v0, v1

    return v0
.end method
