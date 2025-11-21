.class public final synthetic Landroid/os/VibrationEffect$Composed$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/VibratorInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/VibratorInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/VibrationEffect$Composed$$ExternalSyntheticLambda2;->f$0:Landroid/os/VibratorInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/os/VibrationEffect$Composed$$ExternalSyntheticLambda2;->f$0:Landroid/os/VibratorInfo;

    check-cast p1, Landroid/os/vibrator/VibrationEffectSegment;

    invoke-static {p0, p1}, Landroid/os/VibrationEffect$Composed;->lambda$getDuration$0(Landroid/os/VibratorInfo;Landroid/os/vibrator/VibrationEffectSegment;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
