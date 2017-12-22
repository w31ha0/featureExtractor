.class synthetic Lcom/netflix/mediaclient/ui/search/SearchUtils$1;
.super Ljava/lang/Object;
.source "SearchUtils.java"


# static fields
.field static final synthetic $SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->values()[Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->TABLET:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$1;->$SwitchMap$com$netflix$mediaclient$ui$search$SearchUtils$SearchExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->PHONE:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
