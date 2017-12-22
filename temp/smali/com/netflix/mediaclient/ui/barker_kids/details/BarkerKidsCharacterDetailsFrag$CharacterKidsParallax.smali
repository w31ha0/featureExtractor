.class Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$CharacterKidsParallax;
.super Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;
.source "BarkerKidsCharacterDetailsFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 202
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$CharacterKidsParallax;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    .line 203
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->access$200(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    move-result-object v1

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->access$300(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/view/View;

    iget-boolean v4, p1, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->shouldRenderAsSDP:Z

    if-eqz v4, :cond_1

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->access$400(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)Landroid/view/ViewGroup;

    move-result-object v4

    :goto_0
    iget-boolean v5, p1, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->shouldRenderAsSDP:Z

    if-eqz v5, :cond_2

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->access$500(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getFooterViewGroup()Landroid/view/ViewGroup;

    move-result-object v5

    :goto_1
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;-><init>(Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;Landroid/support/v7/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 205
    iget-boolean v0, p1, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->shouldRenderAsSDP:Z

    if-nez v0, :cond_0

    .line 206
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->access$600(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getFooterViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 208
    :cond_0
    return-void

    :cond_1
    move-object v4, v0

    .line 203
    goto :goto_0

    :cond_2
    move-object v5, v0

    goto :goto_1
.end method

.method private getBackroundResource(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$CharacterKidsParallax;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->access$700(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 240
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    .line 225
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 228
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 231
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 234
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 237
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f008b
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected setInitialToolbarColor()V
    .locals 2

    .prologue
    .line 211
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/KidsParallax;->setInitialToolbarColor()V

    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$CharacterKidsParallax;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$CharacterKidsParallax;->getBackroundResource(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/api/Api16Util;->setBackgroundDrawableCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 217
    :cond_0
    return-void
.end method
