.class public Lcom/biznessapps/fragments/CommonFragment;
.super Landroid/support/v4/app/Fragment;
.source "CommonFragment.java"

# interfaces
.implements Lcom/biznessapps/constants/AppConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/fragments/CommonFragment$LoadDataTask;
    }
.end annotation


# static fields
.field protected static final FIRST_ITEM:I


# instance fields
.field protected bitmapUrl:Ljava/lang/String;

.field protected root:Landroid/view/ViewGroup;

.field protected titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 209
    return-void
.end method

.method private initTitleBar()V
    .locals 7

    .prologue
    const v6, 0x3f99999a    # 1.2f

    .line 188
    iget-object v3, p0, Lcom/biznessapps/fragments/CommonFragment;->root:Landroid/view/ViewGroup;

    sget v4, Lcom/biznessapps/layout/R$id;->tab_title_container:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 189
    .local v2, "titleBarRoot":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 190
    sget v3, Lcom/biznessapps/layout/R$id;->tab_title_text:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/biznessapps/fragments/CommonFragment;->titleTextView:Landroid/widget/TextView;

    .line 191
    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "CHILDREN_TAB_LABEL_PRESENT"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 192
    .local v1, "isChildLabelPresent":Z
    if-eqz v1, :cond_1

    .line 193
    iget-object v3, p0, Lcom/biznessapps/fragments/CommonFragment;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonFragment;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "CHILDREN_TAB_LABEL"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :goto_0
    iget-object v3, p0, Lcom/biznessapps/fragments/CommonFragment;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore$UiSettings;->getNavigationTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    iget-object v3, p0, Lcom/biznessapps/fragments/CommonFragment;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore$UiSettings;->getNavigationTextShadowColor()I

    move-result v4

    invoke-virtual {v3, v6, v6, v6, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 200
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/model/AppSettings;

    move-result-object v0

    .line 201
    .local v0, "appSettings":Lcom/biznessapps/model/AppSettings;
    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->getGlobalHeaderUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonFragment;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->getGlobalHeaderUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/biznessapps/utils/ImageManager;->download(Ljava/lang/String;Landroid/view/View;)V

    .line 207
    .end local v0    # "appSettings":Lcom/biznessapps/model/AppSettings;
    .end local v1    # "isChildLabelPresent":Z
    :cond_0
    :goto_1
    return-void

    .line 195
    .restart local v1    # "isChildLabelPresent":Z
    :cond_1
    iget-object v3, p0, Lcom/biznessapps/fragments/CommonFragment;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonFragment;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "TAB_LABEL"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 204
    .restart local v0    # "appSettings":Lcom/biznessapps/model/AppSettings;
    :cond_2
    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonFragment;->getTitleBg()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private showMailingListPropmt()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 288
    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "ba.application.settings"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 289
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/model/AppSettings;

    move-result-object v1

    .line 290
    .local v1, "appSettings":Lcom/biznessapps/model/AppSettings;
    const-string v4, "mailing_dialog"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/biznessapps/model/AppSettings;->isMailingListPrompt()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 292
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    sget v4, Lcom/biznessapps/layout/R$string;->mailing_list:I

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 293
    sget v4, Lcom/biznessapps/layout/R$string;->mailing_list_question:I

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 294
    sget v4, Lcom/biznessapps/layout/R$string;->yes:I

    new-instance v5, Lcom/biznessapps/fragments/CommonFragment$1;

    invoke-direct {v5, p0, v1}, Lcom/biznessapps/fragments/CommonFragment$1;-><init>(Lcom/biznessapps/fragments/CommonFragment;Lcom/biznessapps/model/AppSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 309
    sget v4, Lcom/biznessapps/layout/R$string;->no:I

    new-instance v5, Lcom/biznessapps/fragments/CommonFragment$2;

    invoke-direct {v5, p0}, Lcom/biznessapps/fragments/CommonFragment$2;-><init>(Lcom/biznessapps/fragments/CommonFragment;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 317
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 318
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 319
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "mailing_dialog"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 321
    .end local v0    # "alertBuilder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method


# virtual methods
.method public cacher()Lcom/biznessapps/api/CachingManager;
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    return-object v0
.end method

.method protected canUseCachedData()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public getAppCore()Lcom/biznessapps/api/AppCore;
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getBackButtonBg()Landroid/graphics/drawable/GradientDrawable;
    .locals 5

    .prologue
    .line 65
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore$UiSettings;->getNavigationBarColor()I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x88

    aput v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 70
    .local v0, "gradientBg":Landroid/graphics/drawable/GradientDrawable;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 71
    return-object v0
.end method

.method public getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/activities/CommonFragmentActivity;

    return-object v0
.end method

.method protected getImageDownloader()Lcom/biznessapps/utils/ImageDownloader;
    .locals 1

    .prologue
    .line 284
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getImageDownloader()Lcom/biznessapps/utils/ImageDownloader;

    move-result-object v0

    return-object v0
.end method

.method protected getImageManager()Lcom/biznessapps/utils/ImageManager;
    .locals 1

    .prologue
    .line 276
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string v0, ""

    return-object v0
.end method

.method public getTitleBg()Landroid/graphics/drawable/GradientDrawable;
    .locals 5

    .prologue
    .line 75
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore$UiSettings;->getNavigationBarColor()I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, -0x1

    aput v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 80
    .local v0, "gradientBg":Landroid/graphics/drawable/GradientDrawable;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 81
    return-object v0
.end method

.method public getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v0

    return-object v0
.end method

.method protected getViewsRef()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v0, "viewsRef":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    return-object v0
.end method

.method protected handleInBackground()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method protected hasTitleBar()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method protected loadData()V
    .locals 4

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    .line 134
    .local v0, "holdActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/CommonFragment;->preDataLoading(Landroid/app/Activity;)V

    .line 136
    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonFragment;->canUseCachedData()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/CommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    new-instance v1, Lcom/biznessapps/fragments/CommonFragment$LoadDataTask;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/ViewUtils;->getProgressBar(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonFragment;->getViewsRef()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/biznessapps/fragments/CommonFragment$LoadDataTask;-><init>(Lcom/biznessapps/fragments/CommonFragment;Landroid/app/Activity;Landroid/view/View;Ljava/util/List;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/biznessapps/fragments/CommonFragment$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 58
    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonFragment;->hasTitleBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;->initTitleBar()V

    .line 61
    :cond_0
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;->showMailingListPropmt()V

    .line 62
    return-void
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 172
    return-void
.end method

.method public setCustomButtonStyle(Landroid/widget/Button;)V
    .locals 4
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonFragment;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/utils/ImageManager;->getCustomButtonData()Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    move-result-object v0

    .line 255
    .local v0, "buttonData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;->getCustomButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 257
    .local v1, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 258
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    .end local v1    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 260
    .restart local v1    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v0}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;->getCustomButtonUrl()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "buttonUrl":Ljava/lang/String;
    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 262
    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonFragment;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lcom/biznessapps/utils/ImageManager;->download(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 264
    :cond_2
    invoke-virtual {v0}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;->getDrawableResourceId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 265
    invoke-virtual {v0}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;->getTextColorId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 169
    return-void
.end method
