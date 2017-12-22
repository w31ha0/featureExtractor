.class Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;
.super Ljava/lang/Object;
.source "DiagnosisActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    const v4, 0x7f10018c

    .line 252
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserLoggedIn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 253
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getDiagnosis()Lcom/netflix/mediaclient/servicemgr/IDiagnosis;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->access$302(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Lcom/netflix/mediaclient/servicemgr/IDiagnosis;)Lcom/netflix/mediaclient/servicemgr/IDiagnosis;

    .line 254
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->access$300(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)Lcom/netflix/mediaclient/servicemgr/IDiagnosis;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IDiagnosis;->addListener(Lcom/netflix/mediaclient/servicemgr/IDiagnosis$DiagnosisListener;)V

    .line 255
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->access$300(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)Lcom/netflix/mediaclient/servicemgr/IDiagnosis;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IDiagnosis;->getNetworkStateList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->access$102(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Ljava/util/List;)Ljava/util/List;

    .line 258
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    const v2, 0x7f100191

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->access$402(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 259
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    new-instance v1, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$ResultsAdapter;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$ResultsAdapter;-><init>(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->access$002(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$ResultsAdapter;)Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$ResultsAdapter;

    .line 260
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->access$400(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->access$000(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;)Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$ResultsAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 262
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    const v2, 0x7f100189

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->access$502(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 263
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    const v2, 0x7f10018a

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->access$602(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 264
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->access$702(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/widget/Button;)Landroid/widget/Button;

    .line 265
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    const v2, 0x7f100190

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->access$802(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 266
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    const v2, 0x7f10018b

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->access$902(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 268
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    sget-object v1, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;->INITIAL:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->access$200(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$InfoGroupState;)V

    .line 270
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;->this$0:Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3$1;-><init>(Lcom/netflix/mediaclient/ui/diagnosis/DiagnosisActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 285
    return-void
.end method
