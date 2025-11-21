.class public Landroid/hardware/scontext/SContextAbnormalPressure;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextAbnormalPressure.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/scontext/SContextAbnormalPressure;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/scontext/SContextAbnormalPressure$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAbnormalPressure$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextAbnormalPressure;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextAbnormalPressure;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/scontext/SContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public blacklist getAccX()F
    .locals 1

    iget-object p0, p0, Landroid/hardware/scontext/SContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    const-string v0, "xaxis"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public blacklist getAccY()F
    .locals 1

    iget-object p0, p0, Landroid/hardware/scontext/SContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    const-string v0, "yaxis"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public blacklist getAccZ()F
    .locals 1

    iget-object p0, p0, Landroid/hardware/scontext/SContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    const-string v0, "zaxis"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public blacklist getPressure()F
    .locals 1

    iget-object p0, p0, Landroid/hardware/scontext/SContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    const-string v0, "barometer"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/scontext/SContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/scontext/SContextAbnormalPressure;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
