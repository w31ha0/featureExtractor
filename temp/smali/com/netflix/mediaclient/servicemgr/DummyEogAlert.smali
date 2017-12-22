.class public Lcom/netflix/mediaclient/servicemgr/DummyEogAlert;
.super Ljava/lang/Object;
.source "DummyEogAlert.java"


# static fields
.field private static final DUMMY_EOG_JSON:Ljava/lang/String; = "{\n\'abTestId\': 7027,\n\'abTestCell\': 5,\n\'isBlocking\': false,\n\'locale\': \'en\',\n\'messageName\': \'END_OF_GRANDFATHERING_Q1_2016\',\n\'templateId\': \'end-of-grandfathering\',\n\'title\': \'Your price is changing soon.\',\n\'body\': \'As of May 30, your price will be $9.99/month. This means more of the shows and movies you love\u2014like <b>House of Cards</b> and <b>Unbreakable Kimmy Schmidt</b>.\',\n\'seeOtherPlansText\': \'See Other Choices\',\n\'continueBtnText\': \'Continue\',\n\'currentPlanId\': \'3088\',\n\'currentPlanTier\': \'GLOBAL_TIER1504\',\n\'skipBtnText\': \'Skip for Now\',\n\'skipBtnImpressionType\': \'ACKNOWLEDGED\',\n\'footerText\': \'You may always cancel your membership by going to your \',\n\'footerLinkText\': \'Account\',\n\'footerSuffix\': \'.\',\n\'selectPlanText\': \'Select the plan that works for you:\',\n\'sdPlanText\': \'Basic Plan\',\n\'sdPlanPrice\': \'$7.99/month\',\n\'sdPlanPlanId\': \'4001\',\n\'sdPlanPlanTier\': \'GLOBAL_TIER1401\',\n\'hdPlanText\': \'HD Plan\',\n\'hdPlanPrice\': \'$9.99/month\',\n\'hdPlanPlanId\': \'3088\',\n\'hdPlanPlanTier\': \'GLOBAL_TIER1504\',\n\'hdPlanIsCurrentPlan\': true,\n\'uhdPlanText\': \'Ultra HD Plan\',\n\'uhdPlanPrice\': \'$11.99/month\',\n\'uhdPlanPlanId\': \'3108\',\n\'uhdPlanPlanTier\': \'GLOBAL_TIER1300\',\n\'disclaimerText\': \'HD and Ultra HD quality depend on your Internet service, device, and content availability.\',\n\'urlImage1\': \'http://cdn7.nflximg.net/ipl/71797/1ab2b1b6f02f252dc45152498dd3f9f0ea397568.jpg\',\n\'urlImage2\': \'http://cdn2.nflximg.net/ipl/41547/a184a1d488e02e014e682787e1791fe3e57d6217.jpg\'\n}"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;
    .locals 3

    .prologue
    .line 50
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-string/jumbo v1, "{\n\'abTestId\': 7027,\n\'abTestCell\': 5,\n\'isBlocking\': false,\n\'locale\': \'en\',\n\'messageName\': \'END_OF_GRANDFATHERING_Q1_2016\',\n\'templateId\': \'end-of-grandfathering\',\n\'title\': \'Your price is changing soon.\',\n\'body\': \'As of May 30, your price will be $9.99/month. This means more of the shows and movies you love\u2014like <b>House of Cards</b> and <b>Unbreakable Kimmy Schmidt</b>.\',\n\'seeOtherPlansText\': \'See Other Choices\',\n\'continueBtnText\': \'Continue\',\n\'currentPlanId\': \'3088\',\n\'currentPlanTier\': \'GLOBAL_TIER1504\',\n\'skipBtnText\': \'Skip for Now\',\n\'skipBtnImpressionType\': \'ACKNOWLEDGED\',\n\'footerText\': \'You may always cancel your membership by going to your \',\n\'footerLinkText\': \'Account\',\n\'footerSuffix\': \'.\',\n\'selectPlanText\': \'Select the plan that works for you:\',\n\'sdPlanText\': \'Basic Plan\',\n\'sdPlanPrice\': \'$7.99/month\',\n\'sdPlanPlanId\': \'4001\',\n\'sdPlanPlanTier\': \'GLOBAL_TIER1401\',\n\'hdPlanText\': \'HD Plan\',\n\'hdPlanPrice\': \'$9.99/month\',\n\'hdPlanPlanId\': \'3088\',\n\'hdPlanPlanTier\': \'GLOBAL_TIER1504\',\n\'hdPlanIsCurrentPlan\': true,\n\'uhdPlanText\': \'Ultra HD Plan\',\n\'uhdPlanPrice\': \'$11.99/month\',\n\'uhdPlanPlanId\': \'3108\',\n\'uhdPlanPlanTier\': \'GLOBAL_TIER1300\',\n\'disclaimerText\': \'HD and Ultra HD quality depend on your Internet service, device, and content availability.\',\n\'urlImage1\': \'http://cdn7.nflximg.net/ipl/71797/1ab2b1b6f02f252dc45152498dd3f9f0ea397568.jpg\',\n\'urlImage2\': \'http://cdn2.nflximg.net/ipl/41547/a184a1d488e02e014e682787e1791fe3e57d6217.jpg\'\n}"

    const-class v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    return-object v0
.end method
