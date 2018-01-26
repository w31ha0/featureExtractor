.class public Lcom/biznessapps/fragments/single/HomeFragment;
.super Lcom/biznessapps/fragments/CommonFragment;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/fragments/single/HomeFragment$AppsAdapter;,
        Lcom/biznessapps/fragments/single/HomeFragment$MulitipleItemAdapter;
    }
.end annotation


# instance fields
.field private appInfo:Lcom/biznessapps/model/App;

.field private buttonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private callUsButton:Landroid/widget/Button;

.field private directionButton:Landroid/widget/Button;

.field private gallery:Landroid/widget/GridView;

.field private layout:Landroid/view/ViewGroup;

.field private tabId:Ljava/lang/String;

.field private tellFriendButton:Landroid/widget/Button;

.field private tellFriendContentView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->buttonList:Ljava/util/List;

    .line 326
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/single/HomeFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/HomeFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->callUsButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/fragments/single/HomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/HomeFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/HomeFragment;->callUs()V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/fragments/single/HomeFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/HomeFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->directionButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/fragments/single/HomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/HomeFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/HomeFragment;->showDirections()V

    return-void
.end method

.method static synthetic access$400(Lcom/biznessapps/fragments/single/HomeFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/HomeFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->tellFriendButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/fragments/single/HomeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/HomeFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/HomeFragment;->openFriendContent()V

    return-void
.end method

.method static synthetic access$600(Lcom/biznessapps/fragments/single/HomeFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/HomeFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/single/HomeFragment;->makeCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/biznessapps/fragments/single/HomeFragment;Lcom/biznessapps/model/LocationItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/HomeFragment;
    .param p1, "x1"    # Lcom/biznessapps/model/LocationItem;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/single/HomeFragment;->showMap(Lcom/biznessapps/model/LocationItem;)V

    return-void
.end method

.method static synthetic access$800(Lcom/biznessapps/fragments/single/HomeFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/HomeFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->buttonList:Ljava/util/List;

    return-object v0
.end method

.method private addTabButtons(Landroid/app/Activity;)V
    .locals 11
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v10, 0x1

    .line 236
    iget-object v8, p0, Lcom/biznessapps/fragments/single/HomeFragment;->appInfo:Lcom/biznessapps/model/App;

    invoke-virtual {v8}, Lcom/biznessapps/model/App;->getSubTabs()Ljava/util/List;

    move-result-object v2

    .line 237
    .local v2, "subTabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/Tab;>;"
    iget-object v8, p0, Lcom/biznessapps/fragments/single/HomeFragment;->buttonList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 239
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 240
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/model/Tab;

    .line 241
    .local v3, "tab":Lcom/biznessapps/model/Tab;
    invoke-virtual {v3}, Lcom/biznessapps/model/Tab;->isActive()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v3}, Lcom/biznessapps/model/Tab;->getTabId()Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 244
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/biznessapps/layout/R$layout;->sub_tab_layout:I

    invoke-static {v8, v9}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 246
    .local v7, "view":Landroid/view/ViewGroup;
    sget v8, Lcom/biznessapps/layout/R$id;->sub_home_image:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 247
    .local v0, "button":Landroid/widget/ImageView;
    sget v8, Lcom/biznessapps/layout/R$id;->sub_home_text:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 248
    .local v5, "textView":Landroid/widget/TextView;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/biznessapps/model/Tab;->getTabLabelTextColor()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    .line 249
    .local v4, "textColor":I
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 250
    invoke-virtual {v3}, Lcom/biznessapps/model/Tab;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual {v3}, Lcom/biznessapps/model/Tab;->getTabImageUrl()Ljava/lang/String;

    move-result-object v6

    .line 252
    .local v6, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/HomeFragment;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v8

    invoke-virtual {v8, v6, v0, v10}, Lcom/biznessapps/utils/ImageManager;->download(Ljava/lang/String;Landroid/view/View;Z)V

    .line 254
    new-instance v8, Lcom/biznessapps/fragments/single/HomeFragment$4;

    invoke-direct {v8, p0, v3, p1}, Lcom/biznessapps/fragments/single/HomeFragment$4;-><init>(Lcom/biznessapps/fragments/single/HomeFragment;Lcom/biznessapps/model/Tab;Landroid/app/Activity;)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 286
    iget-object v8, p0, Lcom/biznessapps/fragments/single/HomeFragment;->buttonList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 288
    .end local v0    # "button":Landroid/widget/ImageView;
    .end local v3    # "tab":Lcom/biznessapps/model/Tab;
    .end local v4    # "textColor":I
    .end local v5    # "textView":Landroid/widget/TextView;
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "view":Landroid/view/ViewGroup;
    :cond_1
    iget-object v8, p0, Lcom/biznessapps/fragments/single/HomeFragment;->buttonList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 289
    iget-object v8, p0, Lcom/biznessapps/fragments/single/HomeFragment;->gallery:Landroid/widget/GridView;

    new-instance v9, Lcom/biznessapps/fragments/single/HomeFragment$AppsAdapter;

    invoke-direct {v9, p0}, Lcom/biznessapps/fragments/single/HomeFragment$AppsAdapter;-><init>(Lcom/biznessapps/fragments/single/HomeFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 292
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private callUs()V
    .locals 3

    .prologue
    .line 172
    sget v0, Lcom/biznessapps/layout/R$string;->branch_call_title:I

    new-instance v1, Lcom/biznessapps/fragments/single/HomeFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/single/HomeFragment$2;-><init>(Lcom/biznessapps/fragments/single/HomeFragment;)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/biznessapps/fragments/single/HomeFragment;->showMultipleDialog(ILandroid/widget/AdapterView$OnItemClickListener;Z)V

    .line 181
    return-void
.end method

.method private getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/biznessapps/fragments/single/HomeFragment$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/fragments/single/HomeFragment$1;-><init>(Lcom/biznessapps/fragments/single/HomeFragment;)V

    return-object v0
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->callUsButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/biznessapps/fragments/single/HomeFragment;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->directionButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/biznessapps/fragments/single/HomeFragment;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->tellFriendButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/biznessapps/fragments/single/HomeFragment;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-void
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->home_tab_gallery_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->gallery:Landroid/widget/GridView;

    .line 128
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/HomeFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/HomeFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/biznessapps/activities/CommonFragmentActivity;->setProgressBar(Landroid/app/ProgressDialog;)V

    .line 129
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/HomeFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/activities/CommonFragmentActivity;->getProgressBar()Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 130
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->tell_friends_content:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->tellFriendContentView:Landroid/view/ViewGroup;

    .line 131
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->call_us_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->callUsButton:Landroid/widget/Button;

    .line 132
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->direction_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->directionButton:Landroid/widget/Button;

    .line 133
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->tell_friend_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->tellFriendButton:Landroid/widget/Button;

    .line 135
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->callUsButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/single/HomeFragment;->setCustomButtonStyle(Landroid/widget/Button;)V

    .line 136
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->directionButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/single/HomeFragment;->setCustomButtonStyle(Landroid/widget/Button;)V

    .line 137
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->tellFriendButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/single/HomeFragment;->setCustomButtonStyle(Landroid/widget/Button;)V

    .line 138
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/HomeFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/single/HomeFragment;->tellFriendContentView:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/biznessapps/fragments/utils/TellFriendDelegate;->initTellFriends(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 139
    return-void
.end method

.method private makeCall(Ljava/lang/String;)V
    .locals 5
    .param p1, "tel"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "numberToDial":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/HomeFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/biznessapps/activities/CommonFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 225
    .end local v0    # "numberToDial":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private openFriendContent()V
    .locals 3

    .prologue
    .line 163
    iget-object v1, p0, Lcom/biznessapps/fragments/single/HomeFragment;->tellFriendContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 164
    iget-object v1, p0, Lcom/biznessapps/fragments/single/HomeFragment;->tellFriendContentView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 165
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/HomeFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$anim;->show_tell_friends_dialog:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 167
    .local v0, "animation":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/biznessapps/fragments/single/HomeFragment;->tellFriendContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 169
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method private setBackgrounds()V
    .locals 4

    .prologue
    .line 115
    iget-object v1, p0, Lcom/biznessapps/fragments/single/HomeFragment;->appInfo:Lcom/biznessapps/model/App;

    invoke-virtual {v1}, Lcom/biznessapps/model/App;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/fragments/single/HomeFragment;->bitmapUrl:Ljava/lang/String;

    .line 116
    iget-object v1, p0, Lcom/biznessapps/fragments/single/HomeFragment;->bitmapUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/HomeFragment;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/single/HomeFragment;->bitmapUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/biznessapps/fragments/single/HomeFragment;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/biznessapps/utils/ImageManager;->downloadBgUrl(Ljava/lang/String;Landroid/view/View;)V

    .line 119
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/single/HomeFragment;->bitmapUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/biznessapps/api/AppCore$UiSettings;->setHomeBgUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private showDirections()V
    .locals 3

    .prologue
    .line 184
    sget v0, Lcom/biznessapps/layout/R$string;->branch_directions_title:I

    new-instance v1, Lcom/biznessapps/fragments/single/HomeFragment$3;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/single/HomeFragment$3;-><init>(Lcom/biznessapps/fragments/single/HomeFragment;)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/biznessapps/fragments/single/HomeFragment;->showMultipleDialog(ILandroid/widget/AdapterView$OnItemClickListener;Z)V

    .line 192
    return-void
.end method

.method private showMap(Lcom/biznessapps/model/LocationItem;)V
    .locals 3
    .param p1, "location"    # Lcom/biznessapps/model/LocationItem;

    .prologue
    .line 228
    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/HomeFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/biznessapps/model/LocationItem;->getLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/biznessapps/model/LocationItem;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/biznessapps/utils/ViewUtils;->openGoogleMap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_0
    return-void
.end method

.method private showMultipleDialog(ILandroid/widget/AdapterView$OnItemClickListener;Z)V
    .locals 9
    .param p1, "dialogTitle"    # I
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p3, "makeCall"    # Z

    .prologue
    const/4 v8, 0x0

    .line 195
    iget-object v6, p0, Lcom/biznessapps/fragments/single/HomeFragment;->appInfo:Lcom/biznessapps/model/App;

    invoke-virtual {v6}, Lcom/biznessapps/model/App;->getLocations()Ljava/util/List;

    move-result-object v4

    .line 196
    .local v4, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/LocationItem;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 197
    if-eqz p3, :cond_0

    .line 198
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/biznessapps/model/LocationItem;

    invoke-virtual {v6}, Lcom/biznessapps/model/LocationItem;->getTelephone()Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, "tel":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/biznessapps/fragments/single/HomeFragment;->makeCall(Ljava/lang/String;)V

    .line 217
    .end local v5    # "tel":Ljava/lang/String;
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/biznessapps/model/LocationItem;

    invoke-direct {p0, v6}, Lcom/biznessapps/fragments/single/HomeFragment;->showMap(Lcom/biznessapps/model/LocationItem;)V

    goto :goto_0

    .line 204
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/HomeFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 205
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/HomeFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$layout;->multiple_item_dialog:I

    invoke-static {v6, v7}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 206
    .local v3, "listViewRoot":Landroid/view/ViewGroup;
    sget v6, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 207
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 208
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 209
    new-instance v1, Lcom/biznessapps/fragments/single/HomeFragment$MulitipleItemAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/HomeFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/activities/CommonFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, p0, v6, v4}, Lcom/biznessapps/fragments/single/HomeFragment$MulitipleItemAdapter;-><init>(Lcom/biznessapps/fragments/single/HomeFragment;Landroid/content/Context;Ljava/util/List;)V

    .line 210
    .local v1, "ex":Lcom/biznessapps/fragments/single/HomeFragment$MulitipleItemAdapter;
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 212
    .end local v1    # "ex":Lcom/biznessapps/fragments/single/HomeFragment$MulitipleItemAdapter;
    :cond_2
    invoke-virtual {v2, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 213
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 214
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 215
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/HomeFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APP_INFO_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/single/HomeFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/App;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->appInfo:Lcom/biznessapps/model/App;

    .line 81
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->appInfo:Lcom/biznessapps/model/App;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 91
    const-string v0, "http://biznessapps.com/iphone/home.php?app_code=%s&version=4&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/HomeFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/fragments/single/HomeFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    sget v0, Lcom/biznessapps/layout/R$layout;->home_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->root:Landroid/view/ViewGroup;

    .line 71
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->home_layout_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->layout:Landroid/view/ViewGroup;

    .line 72
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/HomeFragment;->initViews()V

    .line 73
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/HomeFragment;->initListeners()V

    .line 74
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/HomeFragment;->loadData()V

    .line 75
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->tabId:Ljava/lang/String;

    .line 87
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {p1}, Lcom/biznessapps/utils/JsonParserUtils;->parseApp(Ljava/lang/String;)Lcom/biznessapps/model/App;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment;->appInfo:Lcom/biznessapps/model/App;

    .line 97
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/HomeFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APP_INFO_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/single/HomeFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/single/HomeFragment;->appInfo:Lcom/biznessapps/model/App;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 5
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/HomeFragment;->setBackgrounds()V

    .line 103
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "TAB"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/Tab;

    .line 104
    .local v0, "tab":Lcom/biznessapps/model/Tab;
    if-eqz v0, :cond_0

    .line 105
    iget-object v4, p0, Lcom/biznessapps/fragments/single/HomeFragment;->callUsButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/biznessapps/model/Tab;->hasCallButton()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 106
    iget-object v4, p0, Lcom/biznessapps/fragments/single/HomeFragment;->directionButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/biznessapps/model/Tab;->hasDirectionButton()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 107
    iget-object v1, p0, Lcom/biznessapps/fragments/single/HomeFragment;->tellFriendButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/biznessapps/model/Tab;->hasTellFriendButton()Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/fragments/single/HomeFragment;->appInfo:Lcom/biznessapps/model/App;

    invoke-virtual {v1}, Lcom/biznessapps/model/App;->getSubTabs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 110
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/single/HomeFragment;->addTabButtons(Landroid/app/Activity;)V

    .line 112
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 105
    goto :goto_0

    :cond_3
    move v1, v3

    .line 106
    goto :goto_1

    :cond_4
    move v2, v3

    .line 107
    goto :goto_2
.end method
