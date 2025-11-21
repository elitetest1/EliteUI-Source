.class public Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextEnvironmentAdaptiveDisplay.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->mContext:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public blacklist getBlue()F
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->mContext:Landroid/os/Bundle;

    const-string v0, "B"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public blacklist getCCT()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->mContext:Landroid/os/Bundle;

    const-string v0, "CCT"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist getGreen()F
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->mContext:Landroid/os/Bundle;

    const-string v0, "G"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public blacklist getLux()J
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->mContext:Landroid/os/Bundle;

    const-string v0, "Lux"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getRed()F
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->mContext:Landroid/os/Bundle;

    const-string v0, "R"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
