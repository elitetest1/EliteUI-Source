.class Landroid/os/vibrator/VibrationEffectSegment$1;
.super Ljava/lang/Object;
.source "VibrationEffectSegment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/vibrator/VibrationEffectSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/vibrator/VibrationEffectSegment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/vibrator/VibrationEffectSegment;
    .locals 0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected vibration event type token in parcel."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {}, Landroid/os/vibrator/Flags;->normalizedPwleEffects()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Landroid/os/vibrator/PwleSegment;

    invoke-direct {p0, p1}, Landroid/os/vibrator/PwleSegment;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :cond_0
    :pswitch_1
    invoke-static {}, Landroid/os/vibrator/Flags;->normalizedPwleEffects()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Landroid/os/vibrator/BasicPwleSegment;

    invoke-direct {p0, p1}, Landroid/os/vibrator/BasicPwleSegment;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :cond_1
    :pswitch_2
    new-instance p0, Landroid/os/vibrator/SemHapticSegment;

    invoke-direct {p0, p1}, Landroid/os/vibrator/SemHapticSegment;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_3
    new-instance p0, Landroid/os/vibrator/RampSegment;

    invoke-direct {p0, p1}, Landroid/os/vibrator/RampSegment;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_4
    new-instance p0, Landroid/os/vibrator/StepSegment;

    invoke-direct {p0, p1}, Landroid/os/vibrator/StepSegment;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_5
    new-instance p0, Landroid/os/vibrator/PrimitiveSegment;

    invoke-direct {p0, p1}, Landroid/os/vibrator/PrimitiveSegment;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_6
    new-instance p0, Landroid/os/vibrator/PrebakedSegment;

    invoke-direct {p0, p1}, Landroid/os/vibrator/PrebakedSegment;-><init>(Landroid/os/Parcel;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/vibrator/VibrationEffectSegment$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/vibrator/VibrationEffectSegment;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/os/vibrator/VibrationEffectSegment;
    .locals 0

    new-array p0, p1, [Landroid/os/vibrator/VibrationEffectSegment;

    return-object p0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/vibrator/VibrationEffectSegment$1;->newArray(I)[Landroid/os/vibrator/VibrationEffectSegment;

    move-result-object p0

    return-object p0
.end method
