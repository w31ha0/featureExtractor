.class Lcom/netflix/mediaclient/ui/mdx/MementoFrag$5;
.super Ljava/lang/Object;
.source "MementoFrag.java"

# interfaces
.implements Lcom/viewpagerindicator/android/osp/ViewPager$PageTransformer;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 315
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 316
    const/high16 v1, 0x3f400000    # 0.75f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 318
    cmpg-float v0, p2, v2

    if-gtz v0, :cond_1

    .line 320
    const v0, 0x7f100108

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 321
    if-nez v0, :cond_0

    .line 322
    const v0, 0x7f10010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 325
    :cond_0
    if-eqz v0, :cond_1

    .line 326
    neg-float v1, p2

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$5;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$000(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Lcom/viewpagerindicator/android/osp/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viewpagerindicator/android/osp/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/barker/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 329
    :cond_1
    return-void
.end method
