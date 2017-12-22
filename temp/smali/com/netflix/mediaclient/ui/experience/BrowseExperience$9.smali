.class synthetic Lcom/netflix/mediaclient/ui/experience/BrowseExperience$9;
.super Ljava/lang/Object;
.source "BrowseExperience.java"


# static fields
.field static final synthetic $SwitchMap$com$netflix$mediaclient$servicemgr$interface_$LoMoType:[I

.field static final synthetic $SwitchMap$com$netflix$mediaclient$ui$experience$PersistentExperience:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 444
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->values()[Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$9;->$SwitchMap$com$netflix$mediaclient$ui$experience$PersistentExperience:[I

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$9;->$SwitchMap$com$netflix$mediaclient$ui$experience$PersistentExperience:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->NON_KUBRICK:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    .line 171
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->values()[Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$9;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$LoMoType:[I

    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$9;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$LoMoType:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CONTINUE_WATCHING:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$9;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$LoMoType:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CHARACTERS:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$9;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$LoMoType:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->BILLBOARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$9;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$LoMoType:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    .line 444
    :catch_4
    move-exception v0

    goto :goto_0
.end method
