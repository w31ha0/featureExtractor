.class public final enum Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;
.super Ljava/lang/Enum;
.source "VideoDetailsViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

.field public static final enum ACTIONS:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

.field public static final enum ACTION_LABEL:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

.field public static final enum CREDITS:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

.field public static final enum INFO:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

.field public static final enum MATCH:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

.field public static final enum SPINNER:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

.field public static final enum SYNOPSIS:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

.field public static final enum TITLE:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;


# instance fields
.field isSecondary:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    const-string/jumbo v1, "TITLE"

    invoke-direct {v0, v1, v3, v3}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->TITLE:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    .line 89
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    const-string/jumbo v1, "INFO"

    invoke-direct {v0, v1, v4, v3}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->INFO:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    .line 90
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    const-string/jumbo v1, "SYNOPSIS"

    invoke-direct {v0, v1, v5, v4}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->SYNOPSIS:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    .line 91
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    const-string/jumbo v1, "CREDITS"

    invoke-direct {v0, v1, v6, v4}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->CREDITS:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    .line 92
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    const-string/jumbo v1, "SPINNER"

    invoke-direct {v0, v1, v7, v3}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->SPINNER:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    .line 93
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    const-string/jumbo v1, "ACTIONS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->ACTIONS:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    .line 94
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    const-string/jumbo v1, "ACTION_LABEL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->ACTION_LABEL:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    .line 95
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    const-string/jumbo v1, "MATCH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->MATCH:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    .line 87
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    sget-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->TITLE:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->INFO:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->SYNOPSIS:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->CREDITS:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->SPINNER:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->ACTIONS:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->ACTION_LABEL:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->MATCH:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->$VALUES:[Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput-boolean p3, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->isSecondary:Z

    .line 100
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->$VALUES:[Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    return-object v0
.end method


# virtual methods
.method public isSecondaryText()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->isSecondary:Z

    return v0
.end method
