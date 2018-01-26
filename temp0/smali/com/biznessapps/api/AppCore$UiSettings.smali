.class public Lcom/biznessapps/api/AppCore$UiSettings;
.super Ljava/lang/Object;
.source "AppCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/api/AppCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UiSettings"
.end annotation


# instance fields
.field private evenRowColor:I

.field private evenRowTextColor:I

.field private hasColor:Z

.field private homeBgUrl:Ljava/lang/String;

.field private navigationBarColor:I

.field private navigationTextColor:I

.field private navigationTextShadowColor:I

.field private oddRowColor:I

.field private oddRowTextColor:I

.field private sectionBarColor:I

.field private sectionTextColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-virtual {p0}, Lcom/biznessapps/api/AppCore$UiSettings;->reset()V

    .line 152
    return-void
.end method


# virtual methods
.method public getEvenRowColor()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/biznessapps/api/AppCore$UiSettings;->evenRowColor:I

    return v0
.end method

.method public getEvenRowTextColor()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/biznessapps/api/AppCore$UiSettings;->evenRowTextColor:I

    return v0
.end method

.method public getHomeBgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/biznessapps/api/AppCore$UiSettings;->homeBgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNavigationBarColor()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/biznessapps/api/AppCore$UiSettings;->navigationBarColor:I

    return v0
.end method

.method public getNavigationTextColor()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/biznessapps/api/AppCore$UiSettings;->navigationTextColor:I

    return v0
.end method

.method public getNavigationTextShadowColor()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/biznessapps/api/AppCore$UiSettings;->navigationTextShadowColor:I

    return v0
.end method

.method public getOddRowColor()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/biznessapps/api/AppCore$UiSettings;->oddRowColor:I

    return v0
.end method

.method public getOddRowTextColor()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/biznessapps/api/AppCore$UiSettings;->oddRowTextColor:I

    return v0
.end method

.method public getSectionBarColor()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/biznessapps/api/AppCore$UiSettings;->sectionBarColor:I

    return v0
.end method

.method public getSectionTextColor()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/biznessapps/api/AppCore$UiSettings;->sectionTextColor:I

    return v0
.end method

.method public isHasColor()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/biznessapps/api/AppCore$UiSettings;->hasColor:Z

    return v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const v2, -0x333334

    const/high16 v1, -0x1000000

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/api/AppCore$UiSettings;->hasColor:Z

    .line 156
    iput v3, p0, Lcom/biznessapps/api/AppCore$UiSettings;->evenRowColor:I

    .line 157
    iput v3, p0, Lcom/biznessapps/api/AppCore$UiSettings;->oddRowColor:I

    .line 158
    iput v1, p0, Lcom/biznessapps/api/AppCore$UiSettings;->evenRowTextColor:I

    .line 159
    iput v1, p0, Lcom/biznessapps/api/AppCore$UiSettings;->oddRowTextColor:I

    .line 160
    iput v2, p0, Lcom/biznessapps/api/AppCore$UiSettings;->navigationBarColor:I

    .line 161
    iput v1, p0, Lcom/biznessapps/api/AppCore$UiSettings;->navigationTextColor:I

    .line 162
    iput v1, p0, Lcom/biznessapps/api/AppCore$UiSettings;->navigationTextShadowColor:I

    .line 163
    iput v2, p0, Lcom/biznessapps/api/AppCore$UiSettings;->sectionBarColor:I

    .line 164
    iput v1, p0, Lcom/biznessapps/api/AppCore$UiSettings;->sectionTextColor:I

    .line 165
    return-void
.end method

.method public setEvenRowColor(I)V
    .locals 0
    .param p1, "evenRowColor"    # I

    .prologue
    .line 179
    iput p1, p0, Lcom/biznessapps/api/AppCore$UiSettings;->evenRowColor:I

    .line 180
    return-void
.end method

.method public setEvenRowTextColor(I)V
    .locals 0
    .param p1, "evenRowTextColor"    # I

    .prologue
    .line 191
    iput p1, p0, Lcom/biznessapps/api/AppCore$UiSettings;->evenRowTextColor:I

    .line 192
    return-void
.end method

.method public setHasColor(Z)V
    .locals 0
    .param p1, "hasColor"    # Z

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/biznessapps/api/AppCore$UiSettings;->hasColor:Z

    .line 234
    return-void
.end method

.method public setHomeBgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "homeBgUrl"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/biznessapps/api/AppCore$UiSettings;->homeBgUrl:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setNavigationBarColor(I)V
    .locals 0
    .param p1, "navigationBarColor"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/biznessapps/api/AppCore$UiSettings;->navigationBarColor:I

    .line 204
    return-void
.end method

.method public setNavigationTextColor(I)V
    .locals 0
    .param p1, "navigationTextColor"    # I

    .prologue
    .line 209
    iput p1, p0, Lcom/biznessapps/api/AppCore$UiSettings;->navigationTextColor:I

    .line 210
    return-void
.end method

.method public setNavigationTextShadowColor(I)V
    .locals 0
    .param p1, "navigationTextShadowColor"    # I

    .prologue
    .line 215
    iput p1, p0, Lcom/biznessapps/api/AppCore$UiSettings;->navigationTextShadowColor:I

    .line 216
    return-void
.end method

.method public setOddRowColor(I)V
    .locals 0
    .param p1, "oddRowColor"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/biznessapps/api/AppCore$UiSettings;->oddRowColor:I

    .line 186
    return-void
.end method

.method public setOddRowTextColor(I)V
    .locals 0
    .param p1, "oddRowTextColor"    # I

    .prologue
    .line 197
    iput p1, p0, Lcom/biznessapps/api/AppCore$UiSettings;->oddRowTextColor:I

    .line 198
    return-void
.end method

.method public setSectionBarColor(I)V
    .locals 0
    .param p1, "sectionBarColor"    # I

    .prologue
    .line 221
    iput p1, p0, Lcom/biznessapps/api/AppCore$UiSettings;->sectionBarColor:I

    .line 222
    return-void
.end method

.method public setSectionTextColor(I)V
    .locals 0
    .param p1, "sectionTextColor"    # I

    .prologue
    .line 227
    iput p1, p0, Lcom/biznessapps/api/AppCore$UiSettings;->sectionTextColor:I

    .line 228
    return-void
.end method
