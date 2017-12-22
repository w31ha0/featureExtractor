.class final enum Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;
.super Ljava/lang/Enum;
.source "IntentCommandGroupType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

.field public static final enum DownloadNotification:Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

.field private static final OFFLINE_INTENT_GROUP_TYPE:Ljava/lang/String; = "of_intent_group_type"

.field public static final enum Unknown:Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    const-string/jumbo v1, "Unknown"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->Unknown:Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    const-string/jumbo v1, "DownloadNotification"

    invoke-direct {v0, v1, v3, v3}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->DownloadNotification:Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->Unknown:Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->DownloadNotification:Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->$VALUES:[Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->mValue:I

    .line 23
    return-void
.end method

.method private static getByValue(I)Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;
    .locals 5

    .prologue
    .line 31
    invoke-static {}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->values()[Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 32
    invoke-direct {v0}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->getIntValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 36
    :goto_1
    return-object v0

    .line 31
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 36
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->Unknown:Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    goto :goto_1
.end method

.method public static getGroupType(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;
    .locals 2

    .prologue
    .line 44
    const-string/jumbo v0, "of_intent_group_type"

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->Unknown:Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    iget v1, v1, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->mValue:I

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 45
    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->getByValue(I)Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    move-result-object v0

    return-object v0
.end method

.method private getIntValue()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->mValue:I

    return v0
.end method

.method public static setIntentGroupType(Landroid/content/Intent;Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;)V
    .locals 2

    .prologue
    .line 40
    const-string/jumbo v0, "of_intent_group_type"

    invoke-direct {p1}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->getIntValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->$VALUES:[Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    return-object v0
.end method
