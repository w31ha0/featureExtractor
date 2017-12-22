.class public interface abstract Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;
.super Ljava/lang/Object;
.source "UserProfile.java"


# virtual methods
.method public abstract getAvatarUrl()Ljava/lang/String;
.end method

.method public abstract getEmail()Ljava/lang/String;
.end method

.method public abstract getFirstName()Ljava/lang/String;
.end method

.method public abstract getGeoCountry()Ljava/lang/String;
.end method

.method public abstract getLanguages()[Ljava/lang/String;
.end method

.method public abstract getLanguagesInCsv()Ljava/lang/String;
.end method

.method public abstract getLanguagesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaturityLevel()I
.end method

.method public abstract getProfileGuid()Ljava/lang/String;
.end method

.method public abstract getProfileName()Ljava/lang/String;
.end method

.method public abstract getProfileToken()Ljava/lang/String;
.end method

.method public abstract getProfileType()Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;
.end method

.method public abstract getReqCountry()Ljava/lang/String;
.end method

.method public abstract isAutoPlayEnabled()Z
.end method

.method public abstract isIQEnabled()Z
.end method

.method public abstract isKidsProfile()Z
.end method

.method public abstract isPrimaryProfile()Z
.end method
