.class Lcom/netflix/mediaclient/ui/mdx/MementoFrag$3;
.super Ljava/lang/Object;
.source "MementoFrag.java"

# interfaces
.implements Lcom/viewpagerindicator/android/osp/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$3;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2

    .prologue
    .line 255
    if-nez p1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$3;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$3;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$000(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Lcom/viewpagerindicator/android/osp/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$200(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;I)V

    .line 258
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$3;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$000(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;)Lcom/viewpagerindicator/android/osp/ViewPager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "POS_TAG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/android/osp/ViewPager;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 247
    instance-of v1, v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;

    if-eqz v1, :cond_0

    .line 248
    check-cast v0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;

    .line 249
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$3;->this$0:Lcom/netflix/mediaclient/ui/mdx/MementoFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag$ActorDetailsView;->getImageTint()I

    move-result v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/mdx/MementoFrag;->access$102(Lcom/netflix/mediaclient/ui/mdx/MementoFrag;I)I

    .line 251
    :cond_0
    return-void
.end method
