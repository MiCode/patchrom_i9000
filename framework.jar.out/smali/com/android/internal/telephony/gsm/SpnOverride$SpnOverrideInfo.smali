.class Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;
.super Ljava/lang/Object;
.source "SpnOverride.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SpnOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpnOverrideInfo"
.end annotation


# instance fields
.field private final fake_home_on:[Ljava/lang/String;

.field private final fake_roaming_on:[Ljava/lang/String;

.field private final imsi_subset:Ljava/lang/String;

.field private final numeric:Ljava/lang/String;

.field private final spn:Ljava/lang/String;

.field private final spn_display_rule:Ljava/lang/String;

.field private final spn_override_only_on:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SpnOverride;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/SpnOverride;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "numeric"
    .parameter "spn"
    .parameter "spn_display_rule"
    .parameter "spn_override_only_on"
    .parameter "fake_home_on"
    .parameter "imsi_subset"
    .parameter "fake_roaming_on"

    .prologue
    const/4 v1, 0x0

    const-string v2, ","

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->this$0:Lcom/android/internal/telephony/gsm/SpnOverride;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->numeric:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->spn:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->spn_display_rule:Ljava/lang/String;

    if-eqz p5, :cond_0

    const-string v0, ","

    invoke-virtual {p5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->spn_override_only_on:[Ljava/lang/String;

    if-eqz p6, :cond_1

    const-string v0, ","

    invoke-virtual {p6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->fake_home_on:[Ljava/lang/String;

    if-eqz p7, :cond_2

    move-object v0, p7

    :goto_2
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->imsi_subset:Ljava/lang/String;

    if-eqz p8, :cond_3

    const-string v0, ","

    invoke-virtual {p8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->fake_roaming_on:[Ljava/lang/String;

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->numeric:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getFakeHomeOn()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->fake_home_on:[Ljava/lang/String;

    return-object v0
.end method

.method public getFakeRoamingOn()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->fake_roaming_on:[Ljava/lang/String;

    return-object v0
.end method

.method public getImsiSubset()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->imsi_subset:Ljava/lang/String;

    return-object v0
.end method

.method public getNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->numeric:Ljava/lang/String;

    return-object v0
.end method

.method public getSpn()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->spn:Ljava/lang/String;

    return-object v0
.end method

.method public getSpnDisplayRule()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->spn_display_rule:Ljava/lang/String;

    return-object v0
.end method

.method public getSpnOverrideOnlyOn()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->spn_override_only_on:[Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpnOverrideInfo [numeric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->spn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spn_display_rule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->spn_display_rule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spn_override_only_on="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->spn_override_only_on:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fake_home_on="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->fake_home_on:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imsi_subset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->imsi_subset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fake_roaming_on="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SpnOverride$SpnOverrideInfo;->fake_roaming_on:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
