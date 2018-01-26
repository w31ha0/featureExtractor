.class public Lcom/biznessapps/model/AppSettings;
.super Ljava/lang/Object;
.source "AppSettings.java"


# instance fields
.field private adWhirlID:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private cols:I

.field private evenRowColor:Ljava/lang/String;

.field private evenRowTextColor:Ljava/lang/String;

.field private footerTint:Ljava/lang/String;

.field private globalHeaderUrl:Ljava/lang/String;

.field private headerSrc:Ljava/lang/String;

.field private headerTint:Ljava/lang/String;

.field private headerTintOpacity:Ljava/lang/String;

.field private isActive:Z

.field private isShowTabText:Z

.field private mailingListPrompt:Z

.field private moreTabBg:Ljava/lang/String;

.field private navTintOpacity:Ljava/lang/String;

.field private navigBarColor:Ljava/lang/String;

.field private navigBarTextColor:Ljava/lang/String;

.field private navigBarTextShadowColor:Ljava/lang/String;

.field private oddRowColor:Ljava/lang/String;

.field private oddRowTextColor:Ljava/lang/String;

.field private rows:I

.field private rssIconUrl:Ljava/lang/String;

.field private sectionBarColor:Ljava/lang/String;

.field private sectionBarTextColor:Ljava/lang/String;

.field private tabFont:Ljava/lang/String;

.field private tabIcon:Ljava/lang/String;

.field private tabId:J

.field private tabSrc:Ljava/lang/String;

.field private tabText:Ljava/lang/String;

.field private tabTint:Ljava/lang/String;

.field private tabTintOpacity:F

.field private useNewDesign:Z

.field private useTextColors:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/model/AppSettings;->isShowTabText:Z

    return-void
.end method


# virtual methods
.method public getAdWhirlID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/biznessapps/model/AppSettings;->adWhirlID:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/biznessapps/model/AppSettings;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getCols()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/biznessapps/model/AppSettings;->cols:I

    return v0
.end method

.method public getEvenRowColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/biznessapps/model/AppSettings;->evenRowColor:Ljava/lang/String;

    return-object v0
.end method

.method public getEvenRowTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/biznessapps/model/AppSettings;->evenRowTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getFooterTint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/biznessapps/model/AppSettings;->footerTint:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalHeaderUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/biznessapps/model/AppSettings;->globalHeaderUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/biznessapps/model/AppSettings;->headerSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderTint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/biznessapps/model/AppSettings;->headerTint:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderTintOpacity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/biznessapps/model/AppSettings;->headerTintOpacity:Ljava/lang/String;

    return-object v0
.end method

.method public getMailingListTabId()J
    .locals 2

    .prologue
    .line 266
    iget-wide v0, p0, Lcom/biznessapps/model/AppSettings;->tabId:J

    return-wide v0
.end method

.method public getMoreTabBg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/biznessapps/model/AppSettings;->moreTabBg:Ljava/lang/String;

    return-object v0
.end method

.method public getNavTintOpacity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/biznessapps/model/AppSettings;->navTintOpacity:Ljava/lang/String;

    return-object v0
.end method

.method public getNavigBarColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/biznessapps/model/AppSettings;->navigBarColor:Ljava/lang/String;

    return-object v0
.end method

.method public getNavigBarTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/biznessapps/model/AppSettings;->navigBarTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getNavigBarTextShadowColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/biznessapps/model/AppSettings;->navigBarTextShadowColor:Ljava/lang/String;

    return-object v0
.end method

.method public getOddRowColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/biznessapps/model/AppSettings;->oddRowColor:Ljava/lang/String;

    return-object v0
.end method

.method public getOddRowTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/biznessapps/model/AppSettings;->oddRowTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getRows()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/biznessapps/model/AppSettings;->rows:I

    return v0
.end method

.method public getRssIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/biznessapps/model/AppSettings;->rssIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionBarColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/biznessapps/model/AppSettings;->sectionBarColor:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionBarTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/biznessapps/model/AppSettings;->sectionBarTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getTabFont()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/biznessapps/model/AppSettings;->tabFont:Ljava/lang/String;

    return-object v0
.end method

.method public getTabIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/biznessapps/model/AppSettings;->tabIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getTabSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/biznessapps/model/AppSettings;->tabSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getTabText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/biznessapps/model/AppSettings;->tabText:Ljava/lang/String;

    return-object v0
.end method

.method public getTabTint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/biznessapps/model/AppSettings;->tabTint:Ljava/lang/String;

    return-object v0
.end method

.method public getTabTintOpacity()F
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/biznessapps/model/AppSettings;->tabTintOpacity:F

    return v0
.end method

.method public getUseTextColors()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/biznessapps/model/AppSettings;->useTextColors:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/biznessapps/model/AppSettings;->isActive:Z

    return v0
.end method

.method public isMailingListPrompt()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/biznessapps/model/AppSettings;->mailingListPrompt:Z

    return v0
.end method

.method public isShowTabText()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/biznessapps/model/AppSettings;->isShowTabText:Z

    return v0
.end method

.method public isUseNewDesign()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/biznessapps/model/AppSettings;->useNewDesign:Z

    return v0
.end method

.method public setActive(Z)V
    .locals 0
    .param p1, "isActive"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/biznessapps/model/AppSettings;->isActive:Z

    .line 47
    return-void
.end method

.method public setAdWhirlID(Ljava/lang/String;)V
    .locals 0
    .param p1, "adWhirlID"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/biznessapps/model/AppSettings;->adWhirlID:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/biznessapps/model/AppSettings;->appId:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setCols(I)V
    .locals 0
    .param p1, "cols"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/biznessapps/model/AppSettings;->cols:I

    .line 63
    return-void
.end method

.method public setEvenRowColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "evenRowColor"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/biznessapps/model/AppSettings;->evenRowColor:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setEvenRowTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "evenRowTextColor"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/biznessapps/model/AppSettings;->evenRowTextColor:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setFooterTint(Ljava/lang/String;)V
    .locals 0
    .param p1, "footerTint"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/biznessapps/model/AppSettings;->footerTint:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setGlobalHeaderUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "globalHeaderUrl"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/biznessapps/model/AppSettings;->globalHeaderUrl:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setHeaderSrc(Ljava/lang/String;)V
    .locals 0
    .param p1, "headerSrc"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/biznessapps/model/AppSettings;->headerSrc:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setHeaderTint(Ljava/lang/String;)V
    .locals 0
    .param p1, "headerTint"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/biznessapps/model/AppSettings;->headerTint:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setHeaderTintOpacity(Ljava/lang/String;)V
    .locals 0
    .param p1, "headerTintOpacity"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/biznessapps/model/AppSettings;->headerTintOpacity:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setMailingListPrompt(Z)V
    .locals 0
    .param p1, "mailingListPrompt"    # Z

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/biznessapps/model/AppSettings;->mailingListPrompt:Z

    .line 263
    return-void
.end method

.method public setMailingListTabId(J)V
    .locals 0
    .param p1, "tabId"    # J

    .prologue
    .line 270
    iput-wide p1, p0, Lcom/biznessapps/model/AppSettings;->tabId:J

    .line 271
    return-void
.end method

.method public setMoreTabBg(Ljava/lang/String;)V
    .locals 0
    .param p1, "moreTabBg"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/biznessapps/model/AppSettings;->moreTabBg:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setNavTintOpacity(Ljava/lang/String;)V
    .locals 0
    .param p1, "navTintOpacity"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/biznessapps/model/AppSettings;->navTintOpacity:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setNavigBarColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "navigBarColor"    # Ljava/lang/String;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/biznessapps/model/AppSettings;->navigBarColor:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setNavigBarTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "navigBarTextColor"    # Ljava/lang/String;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/biznessapps/model/AppSettings;->navigBarTextColor:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setNavigBarTextShadowColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "navigBarTextShadowColor"    # Ljava/lang/String;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/biznessapps/model/AppSettings;->navigBarTextShadowColor:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setOddRowColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "oddRowColor"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/biznessapps/model/AppSettings;->oddRowColor:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setOddRowTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "oddRowTextColor"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/biznessapps/model/AppSettings;->oddRowTextColor:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setRows(I)V
    .locals 0
    .param p1, "rows"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/biznessapps/model/AppSettings;->rows:I

    .line 55
    return-void
.end method

.method public setRssIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "rssIconUrl"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/biznessapps/model/AppSettings;->rssIconUrl:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setSectionBarColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "sectionBarColor"    # Ljava/lang/String;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/biznessapps/model/AppSettings;->sectionBarColor:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public setSectionBarTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "sectionBarTextColor"    # Ljava/lang/String;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/biznessapps/model/AppSettings;->sectionBarTextColor:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public setShowTabText(Z)V
    .locals 0
    .param p1, "isShowTabText"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/biznessapps/model/AppSettings;->isShowTabText:Z

    .line 119
    return-void
.end method

.method public setTabFont(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabFont"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/biznessapps/model/AppSettings;->tabFont:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setTabIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabIcon"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/biznessapps/model/AppSettings;->tabIcon:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setTabSrc(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabSrc"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/biznessapps/model/AppSettings;->tabSrc:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setTabText(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabText"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/biznessapps/model/AppSettings;->tabText:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setTabTint(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabTint"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/biznessapps/model/AppSettings;->tabTint:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setTabTintOpacity(F)V
    .locals 0
    .param p1, "tabTintOpacity"    # F

    .prologue
    .line 86
    iput p1, p0, Lcom/biznessapps/model/AppSettings;->tabTintOpacity:F

    .line 87
    return-void
.end method

.method public setUseNewDesign(Z)V
    .locals 0
    .param p1, "useNewDesign"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/biznessapps/model/AppSettings;->useNewDesign:Z

    .line 175
    return-void
.end method

.method public setUseTextColors(Ljava/lang/String;)V
    .locals 0
    .param p1, "useTextColors"    # Ljava/lang/String;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/biznessapps/model/AppSettings;->useTextColors:Ljava/lang/String;

    .line 255
    return-void
.end method
