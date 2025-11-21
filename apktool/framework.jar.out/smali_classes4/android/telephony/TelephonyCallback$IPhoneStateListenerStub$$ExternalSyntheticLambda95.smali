.class public final synthetic Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda95;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/TelephonyCallback$CpaiDataGatheringListener;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:[B


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/TelephonyCallback$CpaiDataGatheringListener;II[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda95;->f$0:Landroid/telephony/TelephonyCallback$CpaiDataGatheringListener;

    iput p2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda95;->f$1:I

    iput p3, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda95;->f$2:I

    iput-object p4, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda95;->f$3:[B

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda95;->f$0:Landroid/telephony/TelephonyCallback$CpaiDataGatheringListener;

    iget v1, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda95;->f$1:I

    iget v2, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda95;->f$2:I

    iget-object p0, p0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub$$ExternalSyntheticLambda95;->f$3:[B

    invoke-static {v0, v1, v2, p0}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;->lambda$onCpaiDataGatheringNotified$96(Landroid/telephony/TelephonyCallback$CpaiDataGatheringListener;II[B)V

    return-void
.end method
