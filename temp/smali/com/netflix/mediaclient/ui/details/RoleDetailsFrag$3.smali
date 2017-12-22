.class Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$3;
.super Ljava/lang/Object;
.source "RoleDetailsFrag.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;

    const/16 v1, 0x5a

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;->access$100(Lcom/netflix/mediaclient/ui/details/RoleDetailsFrag;I)V

    .line 230
    return-void
.end method
