.class public Lcom/netflix/mediaclient/service/configuration/DeviceRepository;
.super Ljava/lang/Object;
.source "DeviceRepository.java"


# static fields
.field private static final PREF_NAME:Ljava/lang/String; = "nf_device_category"

.field private static final TAG:Ljava/lang/String; = "nf_device"


# instance fields
.field private category:Lcom/netflix/mediaclient/util/DeviceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string/jumbo v0, "nf_device_category"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    const-string/jumbo v1, "nf_device"

    const-string/jumbo v2, "Device category override not found."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceCategory;->find(Ljava/lang/String;)Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;->category:Lcom/netflix/mediaclient/util/DeviceCategory;

    .line 51
    return-void
.end method


# virtual methods
.method public getCategory()Lcom/netflix/mediaclient/util/DeviceCategory;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;->category:Lcom/netflix/mediaclient/util/DeviceCategory;

    return-object v0
.end method

.method public update(Lcom/netflix/mediaclient/util/NetflixPreference;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    const-string/jumbo v0, "nf_device"

    const-string/jumbo v1, "Device category update start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;->category:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    .line 73
    const-string/jumbo v0, "nf_device"

    const-string/jumbo v1, "Both new and old category are null! Do nothing."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;->category:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;->category:Lcom/netflix/mediaclient/util/DeviceCategory;

    .line 82
    const-string/jumbo v0, "nf_device_category"

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->removePref(Ljava/lang/String;)Z

    goto :goto_0

    .line 86
    :cond_2
    invoke-static {p2}, Lcom/netflix/mediaclient/util/DeviceCategory;->find(Ljava/lang/String;)Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;->category:Lcom/netflix/mediaclient/util/DeviceCategory;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/DeviceCategory;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/DeviceRepository;->category:Lcom/netflix/mediaclient/util/DeviceCategory;

    .line 98
    const-string/jumbo v1, "nf_device_category"

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/DeviceCategory;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
