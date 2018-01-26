.class public Lcom/biznessapps/api/navigation/TabView;
.super Ljava/lang/Object;
.source "TabView.java"


# instance fields
.field private final bgUrl:Ljava/lang/String;

.field private final clickAction:Ljava/lang/Runnable;

.field private final context:Landroid/content/Context;

.field private final imageResourceId:I

.field private final imageResourceUrl:Ljava/lang/String;

.field private imageView:Landroid/widget/ImageView;

.field private isTabActive:Z

.field private final tabId:J

.field private tabRootLayout:Landroid/view/ViewGroup;

.field private final textResourceId:Ljava/lang/String;

.field private titleView:Landroid/widget/TextView;

.field private withOldDesign:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Runnable;ZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageResourceId"    # I
    .param p3, "imageResourceUrl"    # Ljava/lang/String;
    .param p4, "bgUrl"    # Ljava/lang/String;
    .param p5, "textResourceId"    # Ljava/lang/String;
    .param p6, "tabId"    # J
    .param p8, "clickAction"    # Ljava/lang/Runnable;
    .param p9, "withOldDesign"    # Z
    .param p10, "isTabActive"    # Z

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/biznessapps/api/navigation/TabView;->context:Landroid/content/Context;

    .line 46
    iput p2, p0, Lcom/biznessapps/api/navigation/TabView;->imageResourceId:I

    .line 47
    iput-object p4, p0, Lcom/biznessapps/api/navigation/TabView;->bgUrl:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/biznessapps/api/navigation/TabView;->textResourceId:Ljava/lang/String;

    .line 49
    iput-object p8, p0, Lcom/biznessapps/api/navigation/TabView;->clickAction:Ljava/lang/Runnable;

    .line 50
    iput-wide p6, p0, Lcom/biznessapps/api/navigation/TabView;->tabId:J

    .line 51
    iput-boolean p9, p0, Lcom/biznessapps/api/navigation/TabView;->withOldDesign:Z

    .line 52
    iput-boolean p10, p0, Lcom/biznessapps/api/navigation/TabView;->isTabActive:Z

    .line 53
    iput-object p3, p0, Lcom/biznessapps/api/navigation/TabView;->imageResourceUrl:Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Lcom/biznessapps/api/navigation/TabView;->initTabViews()V

    .line 56
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabView;->tabRootLayout:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/biznessapps/api/navigation/TabView;->getTabOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/api/navigation/TabView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/api/navigation/TabView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabView;->clickAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method private getImageManager()Lcom/biznessapps/utils/ImageManager;
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v0

    return-object v0
.end method

.method private getTabOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/biznessapps/api/navigation/TabView$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/api/navigation/TabView$1;-><init>(Lcom/biznessapps/api/navigation/TabView;)V

    return-object v0
.end method

.method private initTabViews()V
    .locals 8

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 130
    iget-object v3, p0, Lcom/biznessapps/api/navigation/TabView;->context:Landroid/content/Context;

    sget v6, Lcom/biznessapps/layout/R$layout;->tab:I

    invoke-static {v3, v6}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/biznessapps/api/navigation/TabView;->tabRootLayout:Landroid/view/ViewGroup;

    .line 131
    iget-object v3, p0, Lcom/biznessapps/api/navigation/TabView;->tabRootLayout:Landroid/view/ViewGroup;

    sget v6, Lcom/biznessapps/layout/R$id;->navigation_image_view:I

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/biznessapps/api/navigation/TabView;->imageView:Landroid/widget/ImageView;

    .line 132
    iget v3, p0, Lcom/biznessapps/api/navigation/TabView;->imageResourceId:I

    if-lez v3, :cond_4

    .line 133
    iget-object v3, p0, Lcom/biznessapps/api/navigation/TabView;->imageView:Landroid/widget/ImageView;

    iget v6, p0, Lcom/biznessapps/api/navigation/TabView;->imageResourceId:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/biznessapps/api/navigation/TabView;->tabRootLayout:Landroid/view/ViewGroup;

    sget v6, Lcom/biznessapps/layout/R$id;->navigation_text_view:I

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/biznessapps/api/navigation/TabView;->titleView:Landroid/widget/TextView;

    .line 138
    iget-object v3, p0, Lcom/biznessapps/api/navigation/TabView;->titleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/biznessapps/api/navigation/TabView;->textResourceId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v3, p0, Lcom/biznessapps/api/navigation/TabView;->titleView:Landroid/widget/TextView;

    const v6, -0x333334

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    iget-boolean v3, p0, Lcom/biznessapps/api/navigation/TabView;->isTabActive:Z

    if-nez v3, :cond_1

    .line 142
    iget-object v3, p0, Lcom/biznessapps/api/navigation/TabView;->tabRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 143
    iget-object v3, p0, Lcom/biznessapps/api/navigation/TabView;->tabRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 145
    :cond_1
    iget-boolean v3, p0, Lcom/biznessapps/api/navigation/TabView;->withOldDesign:Z

    if-nez v3, :cond_3

    .line 146
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/model/AppSettings;

    move-result-object v0

    .line 147
    .local v0, "settings":Lcom/biznessapps/model/AppSettings;
    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->getTabSrc()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/biznessapps/api/navigation/TabView;->bgUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    iget-object v2, p0, Lcom/biznessapps/api/navigation/TabView;->bgUrl:Ljava/lang/String;

    .line 151
    :cond_2
    iget-object v3, p0, Lcom/biznessapps/api/navigation/TabView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->getTabText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    new-instance v1, Lcom/biznessapps/utils/ImageManager$TintContainer;

    invoke-direct {v1}, Lcom/biznessapps/utils/ImageManager$TintContainer;-><init>()V

    .line 153
    .local v1, "tint":Lcom/biznessapps/utils/ImageManager$TintContainer;
    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->getTabTint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/biznessapps/utils/ImageManager$TintContainer;->setTintColor(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->getTabTintOpacity()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/biznessapps/utils/ImageManager$TintContainer;->setTintOpacity(F)V

    .line 155
    iget-object v6, p0, Lcom/biznessapps/api/navigation/TabView;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->isShowTabText()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    invoke-direct {p0}, Lcom/biznessapps/api/navigation/TabView;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/api/navigation/TabView;->tabRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2, v4, v1}, Lcom/biznessapps/utils/ImageManager;->download(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/utils/ImageManager$TintContainer;)V

    .line 158
    .end local v0    # "settings":Lcom/biznessapps/model/AppSettings;
    .end local v1    # "tint":Lcom/biznessapps/utils/ImageManager$TintContainer;
    .end local v2    # "url":Ljava/lang/String;
    :cond_3
    return-void

    .line 134
    :cond_4
    iget-object v3, p0, Lcom/biznessapps/api/navigation/TabView;->imageResourceUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/biznessapps/api/navigation/TabView;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v3

    iget-object v6, p0, Lcom/biznessapps/api/navigation/TabView;->imageResourceUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/biznessapps/api/navigation/TabView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6, v7}, Lcom/biznessapps/utils/ImageManager;->download(Ljava/lang/String;Landroid/view/View;)V

    goto/16 :goto_0

    .restart local v0    # "settings":Lcom/biznessapps/model/AppSettings;
    .restart local v1    # "tint":Lcom/biznessapps/utils/ImageManager$TintContainer;
    .restart local v2    # "url":Ljava/lang/String;
    :cond_5
    move v3, v5

    .line 155
    goto :goto_1
.end method


# virtual methods
.method public getView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabView;->tabRootLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public setEnable(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 87
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 88
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "isSelected"    # Z

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/biznessapps/api/navigation/TabView;->withOldDesign:Z

    if-eqz v0, :cond_0

    .line 70
    if-eqz p1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabView;->tabRootLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$drawable;->selected_tab_background:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 72
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabView;->titleView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 79
    :cond_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabView;->tabRootLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$drawable;->navigation_background:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 75
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabView;->titleView:Landroid/widget/TextView;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public shouldBeSelectedForView(J)Z
    .locals 2
    .param p1, "tabId"    # J

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/biznessapps/api/navigation/TabView;->tabId:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public withOldDesign()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/biznessapps/api/navigation/TabView;->withOldDesign:Z

    return v0
.end method
