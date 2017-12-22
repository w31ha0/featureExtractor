.class public final enum Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;
.super Ljava/lang/Enum;
.source "LaunchableMdxTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;

.field public static final enum CAST:Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;

.field public static final enum DIAL:Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;

    const-string/jumbo v1, "DIAL"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;->DIAL:Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;

    const-string/jumbo v1, "CAST"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;->CAST:Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;->DIAL:Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;->CAST:Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;->$VALUES:[Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;->$VALUES:[Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/mdx/protocol/target/LaunchableMdxTarget$LaunchType;

    return-object v0
.end method
