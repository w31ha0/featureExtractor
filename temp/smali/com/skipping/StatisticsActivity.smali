.class public Lcom/skipping/StatisticsActivity;
.super Landroid/app/Activity;
.source "StatisticsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/skipping/StatisticsActivity$myListAdapterWeight;,
        Lcom/skipping/StatisticsActivity$myListAdapterWorkouts;
    }
.end annotation


# instance fields
.field WeightUnit:I

.field private adView:Lcom/google/ads/AdView;

.field button_weight:Landroid/widget/Button;

.field button_workout:Landroid/widget/Button;

.field chart_mode:I

.field listALLMyWeight:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldatabase/MyWeight;",
            ">;"
        }
    .end annotation
.end field

.field listALLMyWorkouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldatabase/MyWorkouts;",
            ">;"
        }
    .end annotation
.end field

.field list_button_calories:Landroid/widget/Button;

.field list_button_center:Landroid/widget/Button;

.field list_button_jump:Landroid/widget/Button;

.field list_button_left:Landroid/widget/Button;

.field list_button_minutes:Landroid/widget/Button;

.field list_button_right:Landroid/widget/Button;

.field list_button_weight:Landroid/widget/Button;

.field list_mode:I

.field mAdapterWeight:Lcom/skipping/StatisticsActivity$myListAdapterWeight;

.field mAdapterWorkouts:Lcom/skipping/StatisticsActivity$myListAdapterWorkouts;

.field mContext:Landroid/content/Context;

.field mDBConnectorWeight:Ldatabase/DBConnectorWeight;

.field mDBConnectorWorkouts:Ldatabase/DBConnectorWorkouts;

.field mListViewWeight:Landroid/widget/ListView;

.field mListViewWorkouts:Landroid/widget/ListView;

.field private mSettings:Landroid/content/SharedPreferences;

.field stat_mode:I

.field timeZone:Ljava/util/TimeZone;

.field viewFlipperChart:Landroid/widget/ViewFlipper;

.field viewFlipperList:Landroid/widget/ViewFlipper;

.field viewFlipperList1:Landroid/widget/ViewFlipper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    const-string v0, "Europe/London"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/skipping/StatisticsActivity;->timeZone:Ljava/util/TimeZone;

    .line 90
    iput v1, p0, Lcom/skipping/StatisticsActivity;->stat_mode:I

    .line 91
    iput v1, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    .line 92
    iput v1, p0, Lcom/skipping/StatisticsActivity;->list_mode:I

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/skipping/StatisticsActivity;->WeightUnit:I

    .line 64
    return-void
.end method


# virtual methods
.method public Back(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1412
    invoke-virtual {p0}, Lcom/skipping/StatisticsActivity;->finish()V

    .line 1413
    return-void
.end method

.method public ShowChartBtt()V
    .locals 6

    .prologue
    const v5, 0x7f020030

    const v4, 0x7f02002e

    const v3, 0x7f02002f

    const v2, 0x7f02002d

    .line 1079
    iget v0, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->list_button_minutes:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1081
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->list_button_calories:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1082
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->list_button_jump:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1083
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->list_button_weight:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1101
    :goto_0
    invoke-virtual {p0}, Lcom/skipping/StatisticsActivity;->drawDayChart()V

    .line 1103
    return-void

    .line 1084
    :cond_0
    iget v0, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1085
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->list_button_minutes:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1086
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->list_button_calories:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1087
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->list_button_jump:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1088
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->list_button_weight:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 1089
    :cond_1
    iget v0, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1090
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->list_button_minutes:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1091
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->list_button_calories:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1092
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->list_button_jump:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1093
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->list_button_weight:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 1095
    :cond_2
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->list_button_minutes:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1096
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->list_button_calories:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1097
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->list_button_jump:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1098
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->list_button_weight:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public ShowListBtt()V
    .locals 3

    .prologue
    .line 788
    iget v0, p0, Lcom/skipping/StatisticsActivity;->list_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 789
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->button_workout:Landroid/widget/Button;

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 790
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->button_weight:Landroid/widget/Button;

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 792
    new-instance v0, Lcom/skipping/StatisticsActivity$myListAdapterWorkouts;

    iget-object v1, p0, Lcom/skipping/StatisticsActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/skipping/StatisticsActivity;->mDBConnectorWorkouts:Ldatabase/DBConnectorWorkouts;

    invoke-virtual {v2}, Ldatabase/DBConnectorWorkouts;->selectAll()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/skipping/StatisticsActivity$myListAdapterWorkouts;-><init>(Lcom/skipping/StatisticsActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/skipping/StatisticsActivity;->mAdapterWorkouts:Lcom/skipping/StatisticsActivity$myListAdapterWorkouts;

    .line 793
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->mListViewWorkouts:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/skipping/StatisticsActivity;->mAdapterWorkouts:Lcom/skipping/StatisticsActivity$myListAdapterWorkouts;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 794
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->mAdapterWorkouts:Lcom/skipping/StatisticsActivity$myListAdapterWorkouts;

    invoke-virtual {v0}, Lcom/skipping/StatisticsActivity$myListAdapterWorkouts;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->mListViewWorkouts:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/skipping/StatisticsActivity;->mAdapterWorkouts:Lcom/skipping/StatisticsActivity$myListAdapterWorkouts;

    invoke-virtual {v1}, Lcom/skipping/StatisticsActivity$myListAdapterWorkouts;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->mListViewWorkouts:Landroid/widget/ListView;

    new-instance v1, Lcom/skipping/StatisticsActivity$1;

    invoke-direct {v1, p0}, Lcom/skipping/StatisticsActivity$1;-><init>(Lcom/skipping/StatisticsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 840
    :goto_0
    return-void

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->button_workout:Landroid/widget/Button;

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 814
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->button_weight:Landroid/widget/Button;

    const v1, 0x7f020030

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 816
    new-instance v0, Lcom/skipping/StatisticsActivity$myListAdapterWeight;

    iget-object v1, p0, Lcom/skipping/StatisticsActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/skipping/StatisticsActivity;->mDBConnectorWeight:Ldatabase/DBConnectorWeight;

    invoke-virtual {v2}, Ldatabase/DBConnectorWeight;->selectAll()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/skipping/StatisticsActivity$myListAdapterWeight;-><init>(Lcom/skipping/StatisticsActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/skipping/StatisticsActivity;->mAdapterWeight:Lcom/skipping/StatisticsActivity$myListAdapterWeight;

    .line 817
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->mListViewWeight:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/skipping/StatisticsActivity;->mAdapterWeight:Lcom/skipping/StatisticsActivity$myListAdapterWeight;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 819
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->mAdapterWeight:Lcom/skipping/StatisticsActivity$myListAdapterWeight;

    invoke-virtual {v0}, Lcom/skipping/StatisticsActivity$myListAdapterWeight;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 820
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->mListViewWeight:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/skipping/StatisticsActivity;->mAdapterWeight:Lcom/skipping/StatisticsActivity$myListAdapterWeight;

    invoke-virtual {v1}, Lcom/skipping/StatisticsActivity$myListAdapterWeight;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 823
    :cond_2
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->mListViewWeight:Landroid/widget/ListView;

    new-instance v1, Lcom/skipping/StatisticsActivity$2;

    invoke-direct {v1, p0}, Lcom/skipping/StatisticsActivity$2;-><init>(Lcom/skipping/StatisticsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_0
.end method

.method public ShowStatBtt()V
    .locals 5

    .prologue
    const v4, 0x7f02002f

    const v3, 0x7f02002d

    const v2, 0x7f02002b

    .line 1185
    iget v0, p0, Lcom/skipping/StatisticsActivity;->stat_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->list_button_left:Landroid/widget/Button;

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1187
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->list_button_right:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1188
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->list_button_center:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1198
    :goto_0
    return-void

    .line 1189
    :cond_0
    iget v0, p0, Lcom/skipping/StatisticsActivity;->stat_mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1190
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->list_button_left:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1191
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->list_button_center:Landroid/widget/Button;

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1192
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->list_button_right:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 1194
    :cond_1
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->list_button_left:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1195
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->list_button_center:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1196
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->list_button_right:Landroid/widget/Button;

    const v1, 0x7f020030

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public calories_chart(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v5, 0x7f040008

    const v4, 0x7f040004

    const/4 v3, 0x2

    .line 966
    iget v0, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 967
    iput v3, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    .line 969
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 970
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040009

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 971
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 973
    invoke-virtual {p0}, Lcom/skipping/StatisticsActivity;->ShowChartBtt()V

    .line 975
    :cond_0
    iget v0, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 976
    iput v3, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    .line 978
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 979
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 981
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 983
    invoke-virtual {p0}, Lcom/skipping/StatisticsActivity;->ShowChartBtt()V

    .line 985
    :cond_1
    iget v0, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 986
    iput v3, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    .line 988
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 989
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 991
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 993
    invoke-virtual {p0}, Lcom/skipping/StatisticsActivity;->ShowChartBtt()V

    .line 996
    :cond_2
    return-void
.end method

.method public days_list(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x2

    .line 1134
    iget v0, p0, Lcom/skipping/StatisticsActivity;->stat_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1135
    iput v3, p0, Lcom/skipping/StatisticsActivity;->stat_mode:I

    .line 1137
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1138
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040009

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1139
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 1141
    invoke-virtual {p0}, Lcom/skipping/StatisticsActivity;->ShowStatBtt()V

    .line 1143
    :cond_0
    iget v0, p0, Lcom/skipping/StatisticsActivity;->stat_mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1144
    iput v3, p0, Lcom/skipping/StatisticsActivity;->stat_mode:I

    .line 1148
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1149
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1151
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 1153
    invoke-virtual {p0}, Lcom/skipping/StatisticsActivity;->ShowStatBtt()V

    .line 1155
    :cond_1
    return-void
.end method

.method public delete_dialog(I)V
    .locals 7
    .param p1, "pos"    # I

    .prologue
    .line 846
    move v3, p1

    .line 848
    .local v3, "position":I
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 849
    .local v0, "dialog":Landroid/app/Dialog;
    const v4, 0x7f03000d

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 851
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 852
    const/high16 v4, 0x7f0a0000

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 853
    .local v1, "dialogButton":Landroid/widget/Button;
    const v4, 0x7f0a005a

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 858
    .local v2, "dialogButton1":Landroid/widget/Button;
    new-instance v4, Lcom/skipping/StatisticsActivity$3;

    invoke-direct {v4, p0, v3, v0}, Lcom/skipping/StatisticsActivity$3;-><init>(Lcom/skipping/StatisticsActivity;ILandroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 893
    new-instance v4, Lcom/skipping/StatisticsActivity$4;

    invoke-direct {v4, p0, v0}, Lcom/skipping/StatisticsActivity$4;-><init>(Lcom/skipping/StatisticsActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 898
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 900
    return-void
.end method

.method public drawDayChart()V
    .locals 36

    .prologue
    .line 371
    const/16 v5, 0x1f

    .line 372
    .local v5, "DaysNumber":I
    const/16 v28, 0x0

    .line 374
    .local v28, "numDays":I
    const-wide/16 v7, 0x0

    .local v7, "FirstDayOfFirstManthLong":J
    const-wide/16 v11, 0x0

    .line 376
    .local v11, "LastDayOfLastManthLong":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_0

    .line 378
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .line 379
    .local v16, "calendar":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ldatabase/MyWorkouts;

    invoke-virtual/range {v31 .. v31}, Ldatabase/MyWorkouts;->getWorkoutStartTime()J

    move-result-wide v31

    move-object/from16 v0, v16

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 380
    const/16 v31, 0x5

    const/16 v32, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 381
    const/16 v31, 0xb

    const/16 v32, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 382
    const/16 v31, 0xc

    const/16 v32, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 383
    const/16 v31, 0xd

    const/16 v32, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 384
    const/16 v31, 0xe

    const/16 v32, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->timeZone:Ljava/util/TimeZone;

    move-object/from16 v31, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 386
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 390
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    .line 391
    .local v17, "calendar1":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ldatabase/MyWorkouts;

    invoke-virtual/range {v31 .. v31}, Ldatabase/MyWorkouts;->getWorkoutStartTime()J

    move-result-wide v31

    move-object/from16 v0, v17

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 392
    const/16 v31, 0x5

    const/16 v32, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v32

    move-object/from16 v0, v17

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 393
    const/16 v31, 0xb

    const/16 v32, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 394
    const/16 v31, 0xc

    const/16 v32, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 395
    const/16 v31, 0xd

    const/16 v32, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 396
    const/16 v31, 0xe

    const/16 v32, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->timeZone:Ljava/util/TimeZone;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 398
    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    .line 400
    sub-long v31, v11, v7

    const-wide/32 v33, 0x5265c00

    div-long v31, v31, v33

    move-wide/from16 v0, v31

    long-to-int v0, v0

    move/from16 v28, v0

    .line 405
    .end local v16    # "calendar":Ljava/util/Calendar;
    .end local v17    # "calendar1":Ljava/util/Calendar;
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    .line 407
    const v26, 0x47c35000    # 100000.0f

    .line 408
    .local v26, "min_value":F
    const/16 v25, 0x0

    .line 410
    .local v25, "max_value":F
    move/from16 v0, v28

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 412
    move/from16 v0, v28

    new-array v0, v0, [Lgraphview/GraphView$GraphViewData;

    move-object/from16 v19, v0

    .line 414
    .local v19, "data":[Lgraphview/GraphView$GraphViewData;
    move-wide v3, v11

    .line 415
    .local v3, "DayMilis":J
    const/16 v27, 0x0

    .line 418
    .local v27, "minutes":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_9

    .line 420
    add-int/lit8 v21, v28, -0x1

    .local v21, "i":I
    :goto_0
    if-gez v21, :cond_2

    .line 444
    new-instance v20, Lgraphview/LineGraphView;

    const-string v31, ""

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lgraphview/LineGraphView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .local v20, "graphView":Lgraphview/GraphView;
    move-object/from16 v31, v20

    .line 446
    check-cast v31, Lgraphview/LineGraphView;

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lgraphview/LineGraphView;->setDrawDataPoints(Z)V

    .line 448
    new-instance v31, Lgraphview/GraphViewSeries;

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lgraphview/GraphViewSeries;-><init>([Lgraphview/GraphViewDataInterface;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgraphview/GraphView;->addSeries(Lgraphview/GraphViewSeries;)V

    .line 452
    const/16 v31, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lgraphview/GraphView;->setScalable(Z)V

    .line 454
    const v31, 0x47c35000    # 100000.0f

    cmpl-float v31, v26, v31

    if-nez v31, :cond_1

    const/16 v26, 0x0

    .line 456
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_8

    .line 457
    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v31, v0

    const-wide v33, 0x3ff4cccccccccccdL    # 1.3

    mul-double v31, v31, v33

    move-object/from16 v0, v20

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lgraphview/GraphView;->setManualYMaxBound(D)V

    .line 458
    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v31, v0

    const-wide v33, 0x3fe6666666666666L    # 0.7

    mul-double v31, v31, v33

    move-object/from16 v0, v20

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lgraphview/GraphView;->setManualYMinBound(D)V

    .line 464
    :goto_1
    const v31, 0x7f0a004d

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/skipping/StatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 465
    .local v24, "layout":Landroid/widget/LinearLayout;
    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 466
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 782
    .end local v20    # "graphView":Lgraphview/GraphView;
    .end local v21    # "i":I
    .end local v27    # "minutes":F
    :goto_2
    return-void

    .line 421
    .end local v24    # "layout":Landroid/widget/LinearLayout;
    .restart local v21    # "i":I
    .restart local v27    # "minutes":F
    :cond_2
    const/16 v27, 0x0

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_3

    .line 423
    const/16 v22, 0x0

    .local v22, "i1":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    add-int/lit8 v31, v31, 0x0

    move/from16 v0, v22

    move/from16 v1, v31

    if-lt v0, v1, :cond_4

    .line 437
    .end local v22    # "i1":I
    :cond_3
    const/16 v31, 0x0

    cmpl-float v31, v27, v31

    if-lez v31, :cond_7

    .line 438
    new-instance v31, Lgraphview/GraphView$GraphViewData;

    const-wide/32 v32, 0x5265c00

    div-long v32, v3, v32

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-direct/range {v31 .. v35}, Lgraphview/GraphView$GraphViewData;-><init>(DD)V

    aput-object v31, v19, v21

    .line 442
    :goto_4
    const-wide/32 v31, 0x5265c00

    sub-long v3, v3, v31

    .line 420
    add-int/lit8 v21, v21, -0x1

    goto/16 :goto_0

    .line 424
    .restart local v22    # "i1":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ldatabase/MyWorkouts;

    invoke-virtual/range {v31 .. v31}, Ldatabase/MyWorkouts;->getWorkoutStartTime()J

    move-result-wide v31

    cmp-long v31, v31, v3

    if-gez v31, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ldatabase/MyWorkouts;

    invoke-virtual/range {v31 .. v31}, Ldatabase/MyWorkouts;->getWorkoutStartTime()J

    move-result-wide v31

    const-wide/32 v33, 0x5265c00

    sub-long v33, v3, v33

    cmp-long v31, v31, v33

    if-lez v31, :cond_6

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ldatabase/MyWorkouts;

    invoke-virtual/range {v31 .. v31}, Ldatabase/MyWorkouts;->getWorkoutEndTime()J

    move-result-wide v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ldatabase/MyWorkouts;

    invoke-virtual/range {v31 .. v31}, Ldatabase/MyWorkouts;->getWorkoutStartTime()J

    move-result-wide v34

    sub-long v31, v32, v34

    const-wide/32 v33, 0xea60

    div-long v31, v31, v33

    move-wide/from16 v0, v31

    long-to-float v0, v0

    move/from16 v31, v0

    add-float v27, v27, v31

    .line 427
    cmpl-float v31, v26, v27

    if-lez v31, :cond_5

    const/16 v31, 0x0

    cmpl-float v31, v27, v31

    if-lez v31, :cond_5

    .line 428
    move/from16 v26, v27

    .line 430
    :cond_5
    cmpg-float v31, v25, v27

    if-gez v31, :cond_6

    .line 431
    move/from16 v25, v27

    .line 423
    :cond_6
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_3

    .line 440
    .end local v22    # "i1":I
    :cond_7
    new-instance v31, Lgraphview/GraphView$GraphViewData;

    const-wide/32 v32, 0x5265c00

    div-long v32, v3, v32

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    invoke-direct/range {v31 .. v35}, Lgraphview/GraphView$GraphViewData;-><init>(DD)V

    aput-object v31, v19, v21

    goto/16 :goto_4

    .line 460
    .restart local v20    # "graphView":Lgraphview/GraphView;
    :cond_8
    const-wide/high16 v31, 0x4024000000000000L    # 10.0

    move-object/from16 v0, v20

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lgraphview/GraphView;->setManualYMaxBound(D)V

    .line 461
    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v20

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lgraphview/GraphView;->setManualYMinBound(D)V

    goto/16 :goto_1

    .line 469
    .end local v20    # "graphView":Lgraphview/GraphView;
    .end local v21    # "i":I
    :cond_9
    const v31, 0x7f0a004d

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/skipping/StatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 470
    .restart local v24    # "layout":Landroid/widget/LinearLayout;
    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_2

    .line 474
    .end local v3    # "DayMilis":J
    .end local v19    # "data":[Lgraphview/GraphView$GraphViewData;
    .end local v24    # "layout":Landroid/widget/LinearLayout;
    .end local v25    # "max_value":F
    .end local v26    # "min_value":F
    .end local v27    # "minutes":F
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    move/from16 v31, v0

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_14

    .line 476
    const v26, 0x47c35000    # 100000.0f

    .line 477
    .restart local v26    # "min_value":F
    const/16 v25, 0x0

    .line 479
    .restart local v25    # "max_value":F
    move/from16 v0, v28

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 481
    move/from16 v0, v28

    new-array v0, v0, [Lgraphview/GraphView$GraphViewData;

    move-object/from16 v19, v0

    .line 483
    .restart local v19    # "data":[Lgraphview/GraphView$GraphViewData;
    move-wide v3, v11

    .line 484
    .restart local v3    # "DayMilis":J
    const/16 v18, 0x0

    .line 487
    .local v18, "calories":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_13

    .line 489
    add-int/lit8 v21, v28, -0x1

    .restart local v21    # "i":I
    :goto_5
    if-gez v21, :cond_c

    .line 511
    new-instance v20, Lgraphview/LineGraphView;

    const-string v31, ""

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lgraphview/LineGraphView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v20    # "graphView":Lgraphview/GraphView;
    move-object/from16 v31, v20

    .line 512
    check-cast v31, Lgraphview/LineGraphView;

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lgraphview/LineGraphView;->setDrawDataPoints(Z)V

    .line 514
    new-instance v31, Lgraphview/GraphViewSeries;

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lgraphview/GraphViewSeries;-><init>([Lgraphview/GraphViewDataInterface;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgraphview/GraphView;->addSeries(Lgraphview/GraphViewSeries;)V

    .line 518
    const/16 v31, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lgraphview/GraphView;->setScalable(Z)V

    .line 520
    const v31, 0x47c35000    # 100000.0f

    cmpl-float v31, v26, v31

    if-nez v31, :cond_b

    const/16 v26, 0x0

    .line 521
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_12

    .line 522
    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v31, v0

    const-wide v33, 0x3ff4cccccccccccdL    # 1.3

    mul-double v31, v31, v33

    move-object/from16 v0, v20

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lgraphview/GraphView;->setManualYMaxBound(D)V

    .line 523
    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v31, v0

    const-wide v33, 0x3fe6666666666666L    # 0.7

    mul-double v31, v31, v33

    move-object/from16 v0, v20

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lgraphview/GraphView;->setManualYMinBound(D)V

    .line 529
    :goto_6
    const v31, 0x7f0a004d

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/skipping/StatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 530
    .restart local v24    # "layout":Landroid/widget/LinearLayout;
    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 531
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 490
    .end local v20    # "graphView":Lgraphview/GraphView;
    .end local v24    # "layout":Landroid/widget/LinearLayout;
    :cond_c
    const/16 v18, 0x0

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_d

    .line 492
    const/16 v22, 0x0

    .restart local v22    # "i1":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    add-int/lit8 v31, v31, 0x0

    move/from16 v0, v22

    move/from16 v1, v31

    if-lt v0, v1, :cond_e

    .line 504
    .end local v22    # "i1":I
    :cond_d
    const/16 v31, 0x0

    cmpl-float v31, v18, v31

    if-lez v31, :cond_11

    .line 505
    new-instance v31, Lgraphview/GraphView$GraphViewData;

    const-wide/32 v32, 0x5265c00

    div-long v32, v3, v32

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-direct/range {v31 .. v35}, Lgraphview/GraphView$GraphViewData;-><init>(DD)V

    aput-object v31, v19, v21

    .line 509
    :goto_8
    const-wide/32 v31, 0x5265c00

    sub-long v3, v3, v31

    .line 489
    add-int/lit8 v21, v21, -0x1

    goto/16 :goto_5

    .line 493
    .restart local v22    # "i1":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ldatabase/MyWorkouts;

    invoke-virtual/range {v31 .. v31}, Ldatabase/MyWorkouts;->getWorkoutStartTime()J

    move-result-wide v31

    cmp-long v31, v31, v3

    if-gez v31, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ldatabase/MyWorkouts;

    invoke-virtual/range {v31 .. v31}, Ldatabase/MyWorkouts;->getWorkoutStartTime()J

    move-result-wide v31

    const-wide/32 v33, 0x5265c00

    sub-long v33, v3, v33

    cmp-long v31, v31, v33

    if-lez v31, :cond_10

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ldatabase/MyWorkouts;

    invoke-virtual/range {v31 .. v31}, Ldatabase/MyWorkouts;->getCalories()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v18, v18, v31

    .line 495
    cmpl-float v31, v26, v18

    if-lez v31, :cond_f

    const/16 v31, 0x0

    cmpl-float v31, v18, v31

    if-lez v31, :cond_f

    .line 496
    move/from16 v26, v18

    .line 498
    :cond_f
    cmpg-float v31, v25, v18

    if-gez v31, :cond_10

    .line 499
    move/from16 v25, v18

    .line 492
    :cond_10
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_7

    .line 507
    .end local v22    # "i1":I
    :cond_11
    new-instance v31, Lgraphview/GraphView$GraphViewData;

    const-wide/32 v32, 0x5265c00

    div-long v32, v3, v32

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    invoke-direct/range {v31 .. v35}, Lgraphview/GraphView$GraphViewData;-><init>(DD)V

    aput-object v31, v19, v21

    goto/16 :goto_8

    .line 525
    .restart local v20    # "graphView":Lgraphview/GraphView;
    :cond_12
    const-wide/high16 v31, 0x4024000000000000L    # 10.0

    move-object/from16 v0, v20

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lgraphview/GraphView;->setManualYMaxBound(D)V

    .line 526
    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v20

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lgraphview/GraphView;->setManualYMinBound(D)V

    goto/16 :goto_6

    .line 534
    .end local v20    # "graphView":Lgraphview/GraphView;
    .end local v21    # "i":I
    :cond_13
    const v31, 0x7f0a004d

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/skipping/StatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 535
    .restart local v24    # "layout":Landroid/widget/LinearLayout;
    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_2

    .line 540
    .end local v3    # "DayMilis":J
    .end local v18    # "calories":F
    .end local v19    # "data":[Lgraphview/GraphView$GraphViewData;
    .end local v24    # "layout":Landroid/widget/LinearLayout;
    .end local v25    # "max_value":F
    .end local v26    # "min_value":F
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1e

    .line 542
    const v26, 0x47c35000    # 100000.0f

    .line 543
    .restart local v26    # "min_value":F
    const/16 v25, 0x0

    .line 545
    .restart local v25    # "max_value":F
    move/from16 v0, v28

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 547
    move/from16 v0, v28

    new-array v0, v0, [Lgraphview/GraphView$GraphViewData;

    move-object/from16 v19, v0

    .line 549
    .restart local v19    # "data":[Lgraphview/GraphView$GraphViewData;
    move-wide v3, v11

    .line 550
    .restart local v3    # "DayMilis":J
    const/16 v23, 0x0

    .line 553
    .local v23, "jump":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_1d

    .line 556
    add-int/lit8 v21, v28, -0x1

    .restart local v21    # "i":I
    :goto_9
    if-gez v21, :cond_16

    .line 578
    new-instance v20, Lgraphview/LineGraphView;

    const-string v31, ""

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lgraphview/LineGraphView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v20    # "graphView":Lgraphview/GraphView;
    move-object/from16 v31, v20

    .line 580
    check-cast v31, Lgraphview/LineGraphView;

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lgraphview/LineGraphView;->setDrawDataPoints(Z)V

    .line 582
    new-instance v31, Lgraphview/GraphViewSeries;

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lgraphview/GraphViewSeries;-><init>([Lgraphview/GraphViewDataInterface;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgraphview/GraphView;->addSeries(Lgraphview/GraphViewSeries;)V

    .line 586
    const/16 v31, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lgraphview/GraphView;->setScalable(Z)V

    .line 588
    const v31, 0x47c35000    # 100000.0f

    cmpl-float v31, v26, v31

    if-nez v31, :cond_15

    const/16 v26, 0x0

    .line 589
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_1c

    .line 590
    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v31, v0

    const-wide v33, 0x3ff4cccccccccccdL    # 1.3

    mul-double v31, v31, v33

    move-object/from16 v0, v20

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lgraphview/GraphView;->setManualYMaxBound(D)V

    .line 591
    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v31, v0

    const-wide v33, 0x3fe6666666666666L    # 0.7

    mul-double v31, v31, v33

    move-object/from16 v0, v20

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lgraphview/GraphView;->setManualYMinBound(D)V

    .line 597
    :goto_a
    const v31, 0x7f0a004d

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/skipping/StatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 598
    .restart local v24    # "layout":Landroid/widget/LinearLayout;
    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 599
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 557
    .end local v20    # "graphView":Lgraphview/GraphView;
    .end local v24    # "layout":Landroid/widget/LinearLayout;
    :cond_16
    const/16 v23, 0x0

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_17

    .line 559
    const/16 v22, 0x0

    .restart local v22    # "i1":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    add-int/lit8 v31, v31, 0x0

    move/from16 v0, v22

    move/from16 v1, v31

    if-lt v0, v1, :cond_18

    .line 571
    .end local v22    # "i1":I
    :cond_17
    const/16 v31, 0x0

    cmpl-float v31, v23, v31

    if-lez v31, :cond_1b

    .line 572
    new-instance v31, Lgraphview/GraphView$GraphViewData;

    const-wide/32 v32, 0x5265c00

    div-long v32, v3, v32

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-direct/range {v31 .. v35}, Lgraphview/GraphView$GraphViewData;-><init>(DD)V

    aput-object v31, v19, v21

    .line 576
    :goto_c
    const-wide/32 v31, 0x5265c00

    sub-long v3, v3, v31

    .line 556
    add-int/lit8 v21, v21, -0x1

    goto/16 :goto_9

    .line 560
    .restart local v22    # "i1":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ldatabase/MyWorkouts;

    invoke-virtual/range {v31 .. v31}, Ldatabase/MyWorkouts;->getWorkoutStartTime()J

    move-result-wide v31

    cmp-long v31, v31, v3

    if-gez v31, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ldatabase/MyWorkouts;

    invoke-virtual/range {v31 .. v31}, Ldatabase/MyWorkouts;->getWorkoutStartTime()J

    move-result-wide v31

    const-wide/32 v33, 0x5265c00

    sub-long v33, v3, v33

    cmp-long v31, v31, v33

    if-lez v31, :cond_1a

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ldatabase/MyWorkouts;

    invoke-virtual/range {v31 .. v31}, Ldatabase/MyWorkouts;->getJumps()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v23, v23, v31

    .line 562
    cmpl-float v31, v26, v23

    if-lez v31, :cond_19

    const/16 v31, 0x0

    cmpl-float v31, v23, v31

    if-lez v31, :cond_19

    .line 563
    move/from16 v26, v23

    .line 565
    :cond_19
    cmpg-float v31, v25, v23

    if-gez v31, :cond_1a

    .line 566
    move/from16 v25, v23

    .line 559
    :cond_1a
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_b

    .line 574
    .end local v22    # "i1":I
    :cond_1b
    new-instance v31, Lgraphview/GraphView$GraphViewData;

    const-wide/32 v32, 0x5265c00

    div-long v32, v3, v32

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    invoke-direct/range {v31 .. v35}, Lgraphview/GraphView$GraphViewData;-><init>(DD)V

    aput-object v31, v19, v21

    goto/16 :goto_c

    .line 593
    .restart local v20    # "graphView":Lgraphview/GraphView;
    :cond_1c
    const-wide/high16 v31, 0x4024000000000000L    # 10.0

    move-object/from16 v0, v20

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lgraphview/GraphView;->setManualYMaxBound(D)V

    .line 594
    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v20

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lgraphview/GraphView;->setManualYMinBound(D)V

    goto/16 :goto_a

    .line 602
    .end local v20    # "graphView":Lgraphview/GraphView;
    .end local v21    # "i":I
    :cond_1d
    const v31, 0x7f0a004d

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/skipping/StatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 603
    .restart local v24    # "layout":Landroid/widget/LinearLayout;
    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_2

    .line 612
    .end local v3    # "DayMilis":J
    .end local v19    # "data":[Lgraphview/GraphView$GraphViewData;
    .end local v23    # "jump":F
    .end local v24    # "layout":Landroid/widget/LinearLayout;
    .end local v25    # "max_value":F
    .end local v26    # "min_value":F
    :cond_1e
    const v26, 0x47c35000    # 100000.0f

    .line 613
    .restart local v26    # "min_value":F
    const/16 v25, 0x0

    .line 615
    .restart local v25    # "max_value":F
    const/16 v6, 0x1f

    .line 616
    .local v6, "DaysNumber1":I
    const/16 v29, 0x0

    .line 618
    .local v29, "numDays1":I
    const-wide/16 v9, 0x0

    .local v9, "FirstDayOfFirstManthLong1":J
    const-wide/16 v13, 0x0

    .line 620
    .local v13, "LastDayOfLastManthLong1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWeight:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWeight:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_1f

    .line 622
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .line 623
    .restart local v16    # "calendar":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWeight:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ldatabase/MyWeight;

    invoke-virtual/range {v31 .. v31}, Ldatabase/MyWeight;->getTime()J

    move-result-wide v31

    move-object/from16 v0, v16

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 624
    const/16 v31, 0x5

    const/16 v32, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 625
    const/16 v31, 0xb

    const/16 v32, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 626
    const/16 v31, 0xc

    const/16 v32, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 627
    const/16 v31, 0xd

    const/16 v32, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 628
    const/16 v31, 0xe

    const/16 v32, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->timeZone:Ljava/util/TimeZone;

    move-object/from16 v31, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 630
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    .line 634
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    .line 635
    .restart local v17    # "calendar1":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWeight:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWeight:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ldatabase/MyWeight;

    invoke-virtual/range {v31 .. v31}, Ldatabase/MyWeight;->getTime()J

    move-result-wide v31

    move-object/from16 v0, v17

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 636
    const/16 v31, 0x5

    const/16 v32, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v32

    move-object/from16 v0, v17

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 637
    const/16 v31, 0xb

    const/16 v32, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 638
    const/16 v31, 0xc

    const/16 v32, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 639
    const/16 v31, 0xd

    const/16 v32, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 640
    const/16 v31, 0xe

    const/16 v32, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->timeZone:Ljava/util/TimeZone;

    move-object/from16 v31, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 642
    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    .line 644
    sub-long v31, v13, v9

    const-wide/32 v33, 0x5265c00

    div-long v31, v31, v33

    move-wide/from16 v0, v31

    long-to-int v0, v0

    move/from16 v29, v0

    .line 647
    .end local v16    # "calendar":Ljava/util/Calendar;
    .end local v17    # "calendar1":Ljava/util/Calendar;
    :cond_1f
    move/from16 v0, v29

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v29

    .line 649
    move/from16 v0, v29

    new-array v0, v0, [Lgraphview/GraphView$GraphViewData;

    move-object/from16 v19, v0

    .line 651
    .restart local v19    # "data":[Lgraphview/GraphView$GraphViewData;
    move-wide v3, v13

    .line 652
    .restart local v3    # "DayMilis":J
    const/16 v30, 0x0

    .line 655
    .local v30, "weight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWeight:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWeight:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_2a

    .line 657
    add-int/lit8 v21, v29, -0x1

    .restart local v21    # "i":I
    :goto_d
    if-gez v21, :cond_21

    .line 699
    const-string v15, ""

    .line 700
    .local v15, "TempWeightUnit":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/skipping/StatisticsActivity;->WeightUnit:I

    move/from16 v31, v0

    if-nez v31, :cond_28

    .line 701
    const v31, 0x7f05002c

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/skipping/StatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 706
    :goto_e
    new-instance v20, Lgraphview/LineGraphView;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lgraphview/LineGraphView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v20    # "graphView":Lgraphview/GraphView;
    move-object/from16 v31, v20

    .line 708
    check-cast v31, Lgraphview/LineGraphView;

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lgraphview/LineGraphView;->setDrawDataPoints(Z)V

    .line 710
    new-instance v31, Lgraphview/GraphViewSeries;

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lgraphview/GraphViewSeries;-><init>([Lgraphview/GraphViewDataInterface;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lgraphview/GraphView;->addSeries(Lgraphview/GraphViewSeries;)V

    .line 715
    const/16 v31, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lgraphview/GraphView;->setScalable(Z)V

    .line 717
    const v31, 0x47c35000    # 100000.0f

    cmpl-float v31, v26, v31

    if-nez v31, :cond_20

    const/16 v26, 0x0

    .line 718
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWeight:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWeight:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_29

    .line 719
    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v31, v0

    const-wide v33, 0x3ff4cccccccccccdL    # 1.3

    mul-double v31, v31, v33

    move-object/from16 v0, v20

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lgraphview/GraphView;->setManualYMaxBound(D)V

    .line 720
    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v31, v0

    const-wide v33, 0x3fe6666666666666L    # 0.7

    mul-double v31, v31, v33

    move-object/from16 v0, v20

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lgraphview/GraphView;->setManualYMinBound(D)V

    .line 726
    :goto_f
    const v31, 0x7f0a004d

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/skipping/StatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 727
    .restart local v24    # "layout":Landroid/widget/LinearLayout;
    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 728
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 658
    .end local v15    # "TempWeightUnit":Ljava/lang/String;
    .end local v20    # "graphView":Lgraphview/GraphView;
    .end local v24    # "layout":Landroid/widget/LinearLayout;
    :cond_21
    const/16 v30, 0x0

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWeight:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    if-eqz v31, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWeight:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_22

    .line 660
    const/16 v22, 0x0

    .restart local v22    # "i1":I
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWeight:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    add-int/lit8 v31, v31, 0x0

    move/from16 v0, v22

    move/from16 v1, v31

    if-lt v0, v1, :cond_23

    .line 690
    .end local v22    # "i1":I
    :cond_22
    :goto_11
    const/16 v31, 0x0

    cmpl-float v31, v30, v31

    if-lez v31, :cond_27

    .line 691
    new-instance v31, Lgraphview/GraphView$GraphViewData;

    const-wide/32 v32, 0x5265c00

    div-long v32, v3, v32

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-direct/range {v31 .. v35}, Lgraphview/GraphView$GraphViewData;-><init>(DD)V

    aput-object v31, v19, v21

    .line 695
    :goto_12
    const-wide/32 v31, 0x5265c00

    sub-long v3, v3, v31

    .line 657
    add-int/lit8 v21, v21, -0x1

    goto/16 :goto_d

    .line 661
    .restart local v22    # "i1":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWeight:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ldatabase/MyWeight;

    invoke-virtual/range {v31 .. v31}, Ldatabase/MyWeight;->getTime()J

    move-result-wide v31

    cmp-long v31, v31, v3

    if-gez v31, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWeight:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ldatabase/MyWeight;

    invoke-virtual/range {v31 .. v31}, Ldatabase/MyWeight;->getTime()J

    move-result-wide v31

    const-wide/32 v33, 0x5265c00

    sub-long v33, v3, v33

    cmp-long v31, v31, v33

    if-lez v31, :cond_26

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWeight:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ldatabase/MyWeight;

    invoke-virtual/range {v31 .. v31}, Ldatabase/MyWeight;->getWeight()J

    move-result-wide v31

    move-wide/from16 v0, v31

    long-to-float v0, v0

    move/from16 v30, v0

    .line 665
    move-object/from16 v0, p0

    iget v0, v0, Lcom/skipping/StatisticsActivity;->WeightUnit:I

    move/from16 v31, v0

    if-nez v31, :cond_25

    .line 666
    const v31, 0x47c35000    # 100000.0f

    div-float v30, v30, v31

    .line 667
    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v30, v0

    .line 668
    const/high16 v31, 0x41200000    # 10.0f

    div-float v30, v30, v31

    .line 675
    :goto_13
    cmpl-float v31, v26, v30

    if-lez v31, :cond_24

    const/16 v31, 0x0

    cmpl-float v31, v30, v31

    if-lez v31, :cond_24

    .line 676
    move/from16 v26, v30

    .line 678
    :cond_24
    cmpg-float v31, v25, v30

    if-gez v31, :cond_22

    .line 679
    move/from16 v25, v30

    .line 683
    goto/16 :goto_11

    .line 670
    :cond_25
    const v31, 0x47c35000    # 100000.0f

    div-float v31, v30, v31

    const v32, 0x3ee83d42

    div-float v30, v31, v32

    .line 671
    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v30, v0

    .line 672
    const/high16 v31, 0x41200000    # 10.0f

    div-float v30, v30, v31

    goto :goto_13

    .line 660
    :cond_26
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_10

    .line 693
    .end local v22    # "i1":I
    :cond_27
    new-instance v31, Lgraphview/GraphView$GraphViewData;

    const-wide/32 v32, 0x5265c00

    div-long v32, v3, v32

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    invoke-direct/range {v31 .. v35}, Lgraphview/GraphView$GraphViewData;-><init>(DD)V

    aput-object v31, v19, v21

    goto/16 :goto_12

    .line 703
    .restart local v15    # "TempWeightUnit":Ljava/lang/String;
    :cond_28
    const v31, 0x7f050030

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/skipping/StatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_e

    .line 722
    .restart local v20    # "graphView":Lgraphview/GraphView;
    :cond_29
    const-wide/high16 v31, 0x4024000000000000L    # 10.0

    move-object/from16 v0, v20

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lgraphview/GraphView;->setManualYMaxBound(D)V

    .line 723
    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v20

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Lgraphview/GraphView;->setManualYMinBound(D)V

    goto/16 :goto_f

    .line 731
    .end local v15    # "TempWeightUnit":Ljava/lang/String;
    .end local v20    # "graphView":Lgraphview/GraphView;
    .end local v21    # "i":I
    :cond_2a
    const v31, 0x7f0a004d

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/skipping/StatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 732
    .restart local v24    # "layout":Landroid/widget/LinearLayout;
    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_2
.end method

.method public drawWeekChart()V
    .locals 32

    .prologue
    .line 208
    const-wide/16 v2, 0x0

    .local v2, "FirstDayOfWorkout":J
    const-wide/16 v4, 0x0

    .line 209
    .local v4, "LastDayOfWorkout":J
    const/16 v25, 0x0

    .line 210
    .local v25, "workout_weeks":F
    const/16 v26, 0x0

    .line 211
    .local v26, "workout_weeks_int":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-lez v27, :cond_0

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ldatabase/MyWorkouts;

    invoke-virtual/range {v27 .. v27}, Ldatabase/MyWorkouts;->getWorkoutStartTime()J

    move-result-wide v2

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ldatabase/MyWorkouts;

    invoke-virtual/range {v27 .. v27}, Ldatabase/MyWorkouts;->getWorkoutStartTime()J

    move-result-wide v4

    .line 216
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 217
    .local v6, "calendar":Ljava/util/Calendar;
    invoke-virtual {v6}, Ljava/util/Calendar;->clear()V

    .line 218
    invoke-virtual {v6, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 220
    const/16 v27, 0xb

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 221
    const/16 v27, 0xc

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 222
    const/16 v27, 0xd

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 223
    const/16 v27, 0xe

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 224
    const/16 v27, 0x7

    invoke-virtual {v6}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->timeZone:Ljava/util/TimeZone;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 226
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 228
    .local v8, "dateFirstDayOfFirstWeekLong":J
    invoke-virtual {v6}, Ljava/util/Calendar;->clear()V

    .line 229
    invoke-virtual {v6, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 231
    const/16 v27, 0xb

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 232
    const/16 v27, 0xc

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 233
    const/16 v27, 0xd

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 234
    const/16 v27, 0xe

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 235
    const/16 v27, 0x7

    invoke-virtual {v6}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 236
    const/16 v27, 0x6

    const/16 v28, 0x7

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 237
    const/16 v27, 0xe

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->timeZone:Ljava/util/TimeZone;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 239
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 243
    .local v10, "dateLastDayOfLastWeekLong":J
    sub-long v27, v10, v8

    const-wide/16 v29, 0x3e8

    div-long v27, v27, v29

    move-wide/from16 v0, v27

    long-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x4913a800    # 604800.0f

    div-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v25, v0

    .line 244
    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v26, v0

    .line 245
    const/16 v27, 0xa

    move/from16 v0, v27

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v26

    .line 247
    move/from16 v0, v26

    new-array v7, v0, [Lgraphview/GraphView$GraphViewData;

    .line 257
    .local v7, "data":[Lgraphview/GraphView$GraphViewData;
    const-wide/32 v18, 0x186a0

    .line 258
    .local v18, "min_value":J
    const-wide/16 v16, 0x0

    .line 260
    .local v16, "max_value":J
    add-int/lit8 v20, v26, -0x1

    .line 261
    .local v20, "num_week":I
    move-wide/from16 v21, v10

    .line 263
    .local v21, "temp_time":J
    add-int/lit8 v13, v26, -0x1

    .local v13, "i":I
    :goto_0
    if-gez v13, :cond_1

    .line 292
    new-instance v12, Lgraphview/BarGraphView;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const v28, 0x7f050059

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/skipping/StatisticsActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v12, v0, v1}, Lgraphview/BarGraphView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 296
    .local v12, "graphView":Lgraphview/GraphView;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Lgraphview/GraphView;->setShowHorizontalLabels(Z)V

    .line 298
    new-instance v27, Lgraphview/GraphViewSeries;

    move-object/from16 v0, v27

    invoke-direct {v0, v7}, Lgraphview/GraphViewSeries;-><init>([Lgraphview/GraphViewDataInterface;)V

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lgraphview/GraphView;->addSeries(Lgraphview/GraphViewSeries;)V

    .line 302
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Lgraphview/GraphView;->setScrollable(Z)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    if-lez v27, :cond_6

    .line 305
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide v29, 0x3ff4cccccccccccdL    # 1.3

    mul-double v27, v27, v29

    move-wide/from16 v0, v27

    invoke-virtual {v12, v0, v1}, Lgraphview/GraphView;->setManualYMaxBound(D)V

    .line 306
    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide v29, 0x3fe6666666666666L    # 0.7

    mul-double v27, v27, v29

    move-wide/from16 v0, v27

    invoke-virtual {v12, v0, v1}, Lgraphview/GraphView;->setManualYMinBound(D)V

    .line 314
    :goto_1
    const v27, 0x7f0a0047

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/skipping/StatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 315
    .local v15, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v15, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 360
    return-void

    .line 265
    .end local v12    # "graphView":Lgraphview/GraphView;
    .end local v15    # "layout":Landroid/widget/LinearLayout;
    :cond_1
    const-wide/16 v23, 0x0

    .line 267
    .local v23, "week_milis":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    add-int/lit8 v14, v27, -0x1

    .local v14, "i1":I
    :goto_2
    if-gez v14, :cond_4

    .line 274
    new-instance v27, Lgraphview/GraphView$GraphViewData;

    const-wide/32 v28, 0x5265c00

    div-long v28, v21, v28

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide/32 v30, 0xea60

    div-long v30, v23, v30

    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-direct/range {v27 .. v31}, Lgraphview/GraphView$GraphViewData;-><init>(DD)V

    aput-object v27, v7, v13

    .line 278
    const-wide/32 v27, 0xea60

    div-long v27, v23, v27

    cmp-long v27, v18, v27

    if-lez v27, :cond_2

    const-wide/16 v27, 0x0

    cmp-long v27, v23, v27

    if-lez v27, :cond_2

    .line 279
    const-wide/32 v27, 0xea60

    div-long v18, v23, v27

    .line 281
    :cond_2
    const-wide/32 v27, 0xea60

    div-long v27, v23, v27

    cmp-long v27, v16, v27

    if-gez v27, :cond_3

    .line 282
    const-wide/32 v27, 0xea60

    div-long v16, v23, v27

    .line 285
    :cond_3
    const-wide/32 v27, 0x240c8400

    sub-long v21, v21, v27

    .line 286
    add-int/lit8 v20, v20, -0x1

    .line 263
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_0

    .line 268
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ldatabase/MyWorkouts;

    invoke-virtual/range {v27 .. v27}, Ldatabase/MyWorkouts;->getWorkoutStartTime()J

    move-result-wide v27

    cmp-long v27, v27, v21

    if-gez v27, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ldatabase/MyWorkouts;

    invoke-virtual/range {v27 .. v27}, Ldatabase/MyWorkouts;->getWorkoutStartTime()J

    move-result-wide v27

    const-wide/32 v29, 0x240c8400

    sub-long v29, v21, v29

    cmp-long v27, v27, v29

    if-lez v27, :cond_5

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ldatabase/MyWorkouts;

    invoke-virtual/range {v27 .. v27}, Ldatabase/MyWorkouts;->getWorkoutEndTime()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ldatabase/MyWorkouts;

    invoke-virtual/range {v27 .. v27}, Ldatabase/MyWorkouts;->getWorkoutStartTime()J

    move-result-wide v30

    sub-long v27, v28, v30

    add-long v23, v23, v27

    .line 267
    :cond_5
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_2

    .line 308
    .end local v14    # "i1":I
    .end local v23    # "week_milis":J
    .restart local v12    # "graphView":Lgraphview/GraphView;
    :cond_6
    const-wide/high16 v27, 0x4024000000000000L    # 10.0

    move-wide/from16 v0, v27

    invoke-virtual {v12, v0, v1}, Lgraphview/GraphView;->setManualYMaxBound(D)V

    .line 309
    const-wide/high16 v27, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v27

    invoke-virtual {v12, v0, v1}, Lgraphview/GraphView;->setManualYMinBound(D)V

    goto/16 :goto_1
.end method

.method public jump_chart(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v4, 0x7f04000b

    const v3, 0x7f040007

    const/4 v2, 0x3

    .line 1002
    iget v0, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1003
    iput v2, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    .line 1006
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1007
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1009
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 1011
    invoke-virtual {p0}, Lcom/skipping/StatisticsActivity;->ShowChartBtt()V

    .line 1013
    :cond_0
    iget v0, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1014
    iput v2, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    .line 1017
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1018
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1020
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 1022
    invoke-virtual {p0}, Lcom/skipping/StatisticsActivity;->ShowChartBtt()V

    .line 1024
    :cond_1
    iget v0, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1025
    iput v2, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    .line 1028
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1029
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1031
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 1033
    invoke-virtual {p0}, Lcom/skipping/StatisticsActivity;->ShowChartBtt()V

    .line 1035
    :cond_2
    return-void
.end method

.method public minutes_chart(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v5, 0x7f040008

    const v4, 0x7f040004

    const/4 v3, 0x1

    .line 932
    iget v0, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 934
    iput v3, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    .line 935
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 936
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 938
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 940
    invoke-virtual {p0}, Lcom/skipping/StatisticsActivity;->ShowChartBtt()V

    .line 942
    :cond_0
    iget v0, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 944
    iput v3, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    .line 945
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 946
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 949
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 950
    invoke-virtual {p0}, Lcom/skipping/StatisticsActivity;->ShowChartBtt()V

    .line 953
    :cond_1
    iget v0, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 955
    iput v3, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    .line 956
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 957
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 959
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 960
    invoke-virtual {p0}, Lcom/skipping/StatisticsActivity;->ShowChartBtt()V

    .line 962
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v2, 0x7f030008

    invoke-virtual {p0, v2}, Lcom/skipping/StatisticsActivity;->setContentView(I)V

    .line 105
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/skipping/StatisticsActivity;->mSettings:Landroid/content/SharedPreferences;

    .line 107
    iget-object v2, p0, Lcom/skipping/StatisticsActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v3, "WeightUnitForChart"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/skipping/StatisticsActivity;->WeightUnit:I

    .line 109
    const v2, 0x7f0a0043

    invoke-virtual {p0, v2}, Lcom/skipping/StatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/skipping/StatisticsActivity;->list_button_left:Landroid/widget/Button;

    .line 110
    const v2, 0x7f0a0045

    invoke-virtual {p0, v2}, Lcom/skipping/StatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/skipping/StatisticsActivity;->list_button_right:Landroid/widget/Button;

    .line 111
    const v2, 0x7f0a0044

    invoke-virtual {p0, v2}, Lcom/skipping/StatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/skipping/StatisticsActivity;->list_button_center:Landroid/widget/Button;

    .line 112
    const v2, 0x7f0a0046

    invoke-virtual {p0, v2}, Lcom/skipping/StatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    iput-object v2, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList:Landroid/widget/ViewFlipper;

    .line 113
    const v2, 0x7f0a004c

    invoke-virtual {p0, v2}, Lcom/skipping/StatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    iput-object v2, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    .line 114
    const v2, 0x7f0a0050

    invoke-virtual {p0, v2}, Lcom/skipping/StatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    iput-object v2, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList1:Landroid/widget/ViewFlipper;

    .line 116
    const v2, 0x7f0a0048

    invoke-virtual {p0, v2}, Lcom/skipping/StatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/skipping/StatisticsActivity;->list_button_minutes:Landroid/widget/Button;

    .line 117
    const v2, 0x7f0a0049

    invoke-virtual {p0, v2}, Lcom/skipping/StatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/skipping/StatisticsActivity;->list_button_calories:Landroid/widget/Button;

    .line 118
    const v2, 0x7f0a004a

    invoke-virtual {p0, v2}, Lcom/skipping/StatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/skipping/StatisticsActivity;->list_button_jump:Landroid/widget/Button;

    .line 119
    const v2, 0x7f0a004b

    invoke-virtual {p0, v2}, Lcom/skipping/StatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/skipping/StatisticsActivity;->list_button_weight:Landroid/widget/Button;

    .line 121
    const v2, 0x7f0a004e

    invoke-virtual {p0, v2}, Lcom/skipping/StatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/skipping/StatisticsActivity;->button_workout:Landroid/widget/Button;

    .line 122
    const v2, 0x7f0a004f

    invoke-virtual {p0, v2}, Lcom/skipping/StatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/skipping/StatisticsActivity;->button_weight:Landroid/widget/Button;

    .line 124
    iput-object p0, p0, Lcom/skipping/StatisticsActivity;->mContext:Landroid/content/Context;

    .line 126
    new-instance v2, Ldatabase/DBConnectorWorkouts;

    invoke-direct {v2, p0}, Ldatabase/DBConnectorWorkouts;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/skipping/StatisticsActivity;->mDBConnectorWorkouts:Ldatabase/DBConnectorWorkouts;

    .line 127
    new-instance v2, Ldatabase/DBConnectorWeight;

    invoke-direct {v2, p0}, Ldatabase/DBConnectorWeight;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/skipping/StatisticsActivity;->mDBConnectorWeight:Ldatabase/DBConnectorWeight;

    .line 129
    const v2, 0x7f0a0051

    invoke-virtual {p0, v2}, Lcom/skipping/StatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/skipping/StatisticsActivity;->mListViewWorkouts:Landroid/widget/ListView;

    .line 130
    const v2, 0x7f0a0052

    invoke-virtual {p0, v2}, Lcom/skipping/StatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/skipping/StatisticsActivity;->mListViewWeight:Landroid/widget/ListView;

    .line 138
    iget-object v2, p0, Lcom/skipping/StatisticsActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v3, "disable_ads"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 139
    .local v0, "disable_ads":Z
    if-nez v0, :cond_0

    .line 141
    new-instance v2, Lcom/google/ads/AdView;

    sget-object v3, Lcom/google/ads/AdSize;->SMART_BANNER:Lcom/google/ads/AdSize;

    const-string v4, "ca-app-pub-8661822564276571/3559185041"

    invoke-direct {v2, p0, v3, v4}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/skipping/StatisticsActivity;->adView:Lcom/google/ads/AdView;

    .line 145
    const v2, 0x7f0a0002

    invoke-virtual {p0, v2}, Lcom/skipping/StatisticsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 148
    .local v1, "layout":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/skipping/StatisticsActivity;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    iget-object v2, p0, Lcom/skipping/StatisticsActivity;->adView:Lcom/google/ads/AdView;

    new-instance v3, Lcom/google/ads/AdRequest;

    invoke-direct {v3}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 153
    .end local v1    # "layout":Landroid/widget/LinearLayout;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 159
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->adView:Lcom/google/ads/AdView;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->destroy()V

    .line 162
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 201
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 168
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->mDBConnectorWeight:Ldatabase/DBConnectorWeight;

    invoke-virtual {v0}, Ldatabase/DBConnectorWeight;->selectAll()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/skipping/StatisticsActivity;->listALLMyWeight:Ljava/util/ArrayList;

    .line 169
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->mDBConnectorWorkouts:Ldatabase/DBConnectorWorkouts;

    invoke-virtual {v0}, Ldatabase/DBConnectorWorkouts;->selectAll()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/skipping/StatisticsActivity;->listALLMyWorkouts:Ljava/util/ArrayList;

    .line 188
    invoke-virtual {p0}, Lcom/skipping/StatisticsActivity;->ShowStatBtt()V

    .line 189
    invoke-virtual {p0}, Lcom/skipping/StatisticsActivity;->ShowChartBtt()V

    .line 190
    invoke-virtual {p0}, Lcom/skipping/StatisticsActivity;->ShowListBtt()V

    .line 192
    invoke-virtual {p0}, Lcom/skipping/StatisticsActivity;->drawWeekChart()V

    .line 195
    return-void
.end method

.method public weeks_list(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v4, 0x7f04000a

    const v3, 0x7f040006

    const/4 v2, 0x1

    .line 1109
    iget v0, p0, Lcom/skipping/StatisticsActivity;->stat_mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1111
    iput v2, p0, Lcom/skipping/StatisticsActivity;->stat_mode:I

    .line 1112
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1113
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1115
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 1117
    invoke-virtual {p0}, Lcom/skipping/StatisticsActivity;->ShowStatBtt()V

    .line 1120
    :cond_0
    iget v0, p0, Lcom/skipping/StatisticsActivity;->stat_mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1122
    iput v2, p0, Lcom/skipping/StatisticsActivity;->stat_mode:I

    .line 1123
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1124
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1126
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 1127
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 1128
    invoke-virtual {p0}, Lcom/skipping/StatisticsActivity;->ShowStatBtt()V

    .line 1131
    :cond_1
    return-void
.end method

.method public weight_chart(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v4, 0x7f04000b

    const v3, 0x7f040007

    const/4 v2, 0x4

    .line 1039
    iget v0, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1040
    iput v2, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    .line 1043
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1044
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1046
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 1048
    invoke-virtual {p0}, Lcom/skipping/StatisticsActivity;->ShowChartBtt()V

    .line 1050
    :cond_0
    iget v0, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1051
    iput v2, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    .line 1054
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1055
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1057
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 1059
    invoke-virtual {p0}, Lcom/skipping/StatisticsActivity;->ShowChartBtt()V

    .line 1061
    :cond_1
    iget v0, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1062
    iput v2, p0, Lcom/skipping/StatisticsActivity;->chart_mode:I

    .line 1065
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1066
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040009

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1068
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperChart:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 1070
    invoke-virtual {p0}, Lcom/skipping/StatisticsActivity;->ShowChartBtt()V

    .line 1072
    :cond_2
    return-void
.end method

.method public weight_list_btn(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 919
    iget v0, p0, Lcom/skipping/StatisticsActivity;->list_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 921
    const/4 v0, 0x2

    iput v0, p0, Lcom/skipping/StatisticsActivity;->list_mode:I

    .line 922
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList1:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 923
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList1:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040009

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 924
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList1:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 926
    invoke-virtual {p0}, Lcom/skipping/StatisticsActivity;->ShowListBtt()V

    .line 928
    :cond_0
    return-void
.end method

.method public workout_list(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v4, 0x7f040009

    const v3, 0x7f040005

    const/4 v2, 0x3

    .line 1158
    iget v0, p0, Lcom/skipping/StatisticsActivity;->stat_mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1159
    iput v2, p0, Lcom/skipping/StatisticsActivity;->stat_mode:I

    .line 1162
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1163
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1165
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 1167
    invoke-virtual {p0}, Lcom/skipping/StatisticsActivity;->ShowStatBtt()V

    .line 1169
    :cond_0
    iget v0, p0, Lcom/skipping/StatisticsActivity;->stat_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1170
    iput v2, p0, Lcom/skipping/StatisticsActivity;->stat_mode:I

    .line 1173
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1174
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1176
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 1177
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 1179
    invoke-virtual {p0}, Lcom/skipping/StatisticsActivity;->ShowStatBtt()V

    .line 1181
    :cond_1
    return-void
.end method

.method public workout_list_btn(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 905
    iget v0, p0, Lcom/skipping/StatisticsActivity;->list_mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 907
    const/4 v0, 0x1

    iput v0, p0, Lcom/skipping/StatisticsActivity;->list_mode:I

    .line 910
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList1:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 911
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList1:Landroid/widget/ViewFlipper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 912
    iget-object v0, p0, Lcom/skipping/StatisticsActivity;->viewFlipperList1:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 914
    invoke-virtual {p0}, Lcom/skipping/StatisticsActivity;->ShowListBtt()V

    .line 916
    :cond_0
    return-void
.end method
