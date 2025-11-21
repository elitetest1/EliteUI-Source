.class public final Landroid/os/DynamicEffect;
.super Landroid/os/VibrationEffect;
.source "DynamicEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/DynamicEffect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mJson:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/DynamicEffect$1;

    invoke-direct {v0}, Landroid/os/DynamicEffect$1;-><init>()V

    sput-object v0, Landroid/os/DynamicEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    iput-object p1, p0, Landroid/os/DynamicEffect;->mJson:Ljava/lang/String;

    return-void
.end method

.method public static greylist create(Ljava/lang/String;)Landroid/os/DynamicEffect;
    .locals 1

    new-instance v0, Landroid/os/DynamicEffect;

    invoke-direct {v0, p0}, Landroid/os/DynamicEffect;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public blacklist applyAdaptiveScale(F)Landroid/os/DynamicEffect;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic blacklist applyAdaptiveScale(F)Landroid/os/VibrationEffect;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/DynamicEffect;->applyAdaptiveScale(F)Landroid/os/DynamicEffect;

    move-result-object p0

    return-object p0
.end method

.method public blacklist applyEffectStrength(I)Landroid/os/DynamicEffect;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic blacklist applyEffectStrength(I)Landroid/os/VibrationEffect;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/DynamicEffect;->applyEffectStrength(I)Landroid/os/DynamicEffect;

    move-result-object p0

    return-object p0
.end method

.method public blacklist applyRepeatingIndefinitely(ZI)Landroid/os/VibrationEffect;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist areVibrationFeaturesSupported(Landroid/os/VibratorInfo;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist computeCreateWaveformOffOnTimingsOrNull()[J
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [J

    return-object p0
.end method

.method public blacklist cropToLengthOrNull(I)Landroid/os/VibrationEffect;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroid/os/DynamicEffect;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Landroid/os/DynamicEffect;

    iget-object p1, p1, Landroid/os/DynamicEffect;->mJson:Ljava/lang/String;

    iget-object p0, p0, Landroid/os/DynamicEffect;->mJson:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist getDuration()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getEffectInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/os/DynamicEffect;->mJson:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget-object p0, p0, Landroid/os/DynamicEffect;->mJson:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public blacklist resolve(I)Landroid/os/DynamicEffect;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic blacklist resolve(I)Landroid/os/VibrationEffect;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/DynamicEffect;->resolve(I)Landroid/os/DynamicEffect;

    move-result-object p0

    return-object p0
.end method

.method public blacklist scale(F)Landroid/os/DynamicEffect;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic blacklist scale(F)Landroid/os/VibrationEffect;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/DynamicEffect;->scale(F)Landroid/os/DynamicEffect;

    move-result-object p0

    return-object p0
.end method

.method public blacklist toDebugString()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DynamicEffect{mJson="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/os/DynamicEffect;->mJson:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist validate()V
    .locals 0

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
