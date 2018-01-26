.class public Lcom/biznessapps/utils/ImageManager$CustomButtonData;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/utils/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomButtonData"
.end annotation


# instance fields
.field private customButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private customButtonUrl:Ljava/lang/String;

.field private drawableResourceId:I

.field private needInvertIcon:Z

.field private textColorId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "textColorId"    # I
    .param p2, "drawableResourceId"    # I

    .prologue
    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    iput p1, p0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;->textColorId:I

    .line 552
    iput p2, p0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;->drawableResourceId:I

    .line 553
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "textColorId"    # I
    .param p2, "drawableResourceId"    # I
    .param p3, "needInvertIcon"    # Z

    .prologue
    .line 556
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;-><init>(II)V

    .line 557
    iput-boolean p3, p0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;->needInvertIcon:Z

    .line 558
    return-void
.end method


# virtual methods
.method public getCustomButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;->customButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCustomButtonUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;->customButtonUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDrawableResourceId()I
    .locals 1

    .prologue
    .line 585
    iget v0, p0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;->drawableResourceId:I

    return v0
.end method

.method public getTextColorId()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;->textColorId:I

    return v0
.end method

.method public isNeedInvertIcon()Z
    .locals 1

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;->needInvertIcon:Z

    return v0
.end method

.method public setCustomButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "customButtonDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;->customButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 574
    return-void
.end method

.method public setCustomButtonUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "customButtonUrl"    # Ljava/lang/String;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;->customButtonUrl:Ljava/lang/String;

    .line 566
    return-void
.end method

.method public setDrawableResourceId(I)V
    .locals 0
    .param p1, "drawableResourceId"    # I

    .prologue
    .line 589
    iput p1, p0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;->drawableResourceId:I

    .line 590
    return-void
.end method

.method public setNeedInvertIcon(Z)V
    .locals 0
    .param p1, "needInvertIcon"    # Z

    .prologue
    .line 597
    iput-boolean p1, p0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;->needInvertIcon:Z

    .line 598
    return-void
.end method

.method public setTextColorId(I)V
    .locals 0
    .param p1, "textColorId"    # I

    .prologue
    .line 581
    iput p1, p0, Lcom/biznessapps/utils/ImageManager$CustomButtonData;->textColorId:I

    .line 582
    return-void
.end method
