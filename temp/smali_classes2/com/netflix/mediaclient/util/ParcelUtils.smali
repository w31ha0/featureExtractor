.class public final Lcom/netflix/mediaclient/util/ParcelUtils;
.super Ljava/lang/Object;
.source "ParcelUtils.java"


# static fields
.field private static final NULL:Ljava/lang/String; = "=NULL="

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/netflix/mediaclient/util/ParcelUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/util/ParcelUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static readBoolean(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static readBoolean(Landroid/os/Parcel;)Z
    .locals 2

    .prologue
    .line 174
    const-string/jumbo v0, "true"

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static readFloat(Landroid/os/Parcel;)F
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->readFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static readFloat(Ljava/lang/String;)F
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 82
    const-string/jumbo v1, "=NULL="

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    :goto_0
    return v0

    .line 86
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    sget-object v2, Lcom/netflix/mediaclient/util/ParcelUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to parse string to int "

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static readInt(Landroid/content/Intent;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static readInt(Landroid/os/Parcel;)I
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->readInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static readInt(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 103
    const-string/jumbo v1, "=NULL="

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    :goto_0
    return v0

    .line 107
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    sget-object v2, Lcom/netflix/mediaclient/util/ParcelUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to parse string to int "

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static readLong(Landroid/content/Intent;Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 249
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readLong(Landroid/os/Parcel;)J
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->readLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readLong(Ljava/lang/String;)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 61
    const-string/jumbo v2, "=NULL="

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    :goto_0
    return-wide v0

    .line 65
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v2

    .line 68
    sget-object v3, Lcom/netflix/mediaclient/util/ParcelUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Failed to parse string to int "

    invoke-static {v3, v4, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static readString(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-static {v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readString(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ParcelUtils;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "=NULL="

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const/4 p0, 0x0

    .line 34
    :cond_0
    return-object p0
.end method

.method public static validateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    if-eqz p0, :cond_0

    .line 49
    :goto_0
    return-object p0

    :cond_0
    const-string/jumbo p0, "=NULL="

    goto :goto_0
.end method

.method public static writeBoolean(Landroid/os/Parcel;Z)V
    .locals 1

    .prologue
    .line 133
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public static writeInt(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 143
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static writeLong(Landroid/os/Parcel;J)V
    .locals 1

    .prologue
    .line 153
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public static writeString(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 123
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ParcelUtils;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    return-void
.end method
