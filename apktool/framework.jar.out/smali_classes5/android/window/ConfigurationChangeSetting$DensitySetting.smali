.class public Landroid/window/ConfigurationChangeSetting$DensitySetting;
.super Landroid/window/ConfigurationChangeSetting;
.source "ConfigurationChangeSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ConfigurationChangeSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DensitySetting"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/ConfigurationChangeSetting$DensitySetting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final blacklist mDensity:I

.field protected final blacklist mDisplayId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/ConfigurationChangeSetting$DensitySetting$1;

    invoke-direct {v0}, Landroid/window/ConfigurationChangeSetting$DensitySetting$1;-><init>()V

    sput-object v0, Landroid/window/ConfigurationChangeSetting$DensitySetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/window/ConfigurationChangeSetting;-><init>(ILandroid/window/ConfigurationChangeSetting-IA;)V

    iput p1, p0, Landroid/window/ConfigurationChangeSetting$DensitySetting;->mDisplayId:I

    iput p2, p0, Landroid/window/ConfigurationChangeSetting$DensitySetting;->mDensity:I

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/window/ConfigurationChangeSetting$DensitySetting;-><init>(II)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/window/ConfigurationChangeSetting$DensitySetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/window/ConfigurationChangeSetting$DensitySetting;

    iget v0, p0, Landroid/window/ConfigurationChangeSetting$DensitySetting;->mDisplayId:I

    iget v2, p1, Landroid/window/ConfigurationChangeSetting$DensitySetting;->mDisplayId:I

    if-ne v0, v2, :cond_0

    iget p0, p0, Landroid/window/ConfigurationChangeSetting$DensitySetting;->mDensity:I

    iget p1, p1, Landroid/window/ConfigurationChangeSetting$DensitySetting;->mDensity:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget v0, p0, Landroid/window/ConfigurationChangeSetting$DensitySetting;->mDisplayId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Landroid/window/ConfigurationChangeSetting$DensitySetting;->mDensity:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/window/ConfigurationChangeSetting;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Landroid/window/ConfigurationChangeSetting$DensitySetting;->mDisplayId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/window/ConfigurationChangeSetting$DensitySetting;->mDensity:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
