.class public Lcom/netflix/mediaclient/ui/user_theme/Theme;
.super Ljava/lang/Object;
.source "Theme.java"


# instance fields
.field bgColor:I

.field iconColor:I

.field isLight:Z

.field secondaryTextColor:I

.field textColor:I


# direct methods
.method public constructor <init>(IIIIZ)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/netflix/mediaclient/ui/user_theme/Theme;->bgColor:I

    .line 14
    iput p2, p0, Lcom/netflix/mediaclient/ui/user_theme/Theme;->textColor:I

    .line 15
    iput p3, p0, Lcom/netflix/mediaclient/ui/user_theme/Theme;->secondaryTextColor:I

    .line 16
    iput p4, p0, Lcom/netflix/mediaclient/ui/user_theme/Theme;->iconColor:I

    .line 17
    iput-boolean p5, p0, Lcom/netflix/mediaclient/ui/user_theme/Theme;->isLight:Z

    .line 18
    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/netflix/mediaclient/ui/user_theme/Theme;->bgColor:I

    return v0
.end method

.method public getIconColor()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/netflix/mediaclient/ui/user_theme/Theme;->iconColor:I

    return v0
.end method

.method public getSecondaryTextColor()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/netflix/mediaclient/ui/user_theme/Theme;->secondaryTextColor:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/netflix/mediaclient/ui/user_theme/Theme;->textColor:I

    return v0
.end method

.method public isLight()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/user_theme/Theme;->isLight:Z

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/netflix/mediaclient/ui/user_theme/Theme;->bgColor:I

    .line 57
    return-void
.end method

.method public setIconColor(I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/netflix/mediaclient/ui/user_theme/Theme;->iconColor:I

    .line 61
    return-void
.end method

.method public setLightTheme(Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/user_theme/Theme;->isLight:Z

    .line 65
    return-void
.end method

.method public setSecondaryTextColor(I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/netflix/mediaclient/ui/user_theme/Theme;->secondaryTextColor:I

    .line 53
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/netflix/mediaclient/ui/user_theme/Theme;->textColor:I

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
