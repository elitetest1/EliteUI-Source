.class public final Landroid/service/games/GameSessionViewHostConfiguration;
.super Ljava/lang/Object;
.source "GameSessionViewHostConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/games/GameSessionViewHostConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final blacklist mDisplayId:I

.field final blacklist mHeightPx:I

.field final blacklist mWidthPx:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/games/GameSessionViewHostConfiguration$1;

    invoke-direct {v0}, Landroid/service/games/GameSessionViewHostConfiguration$1;-><init>()V

    sput-object v0, Landroid/service/games/GameSessionViewHostConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mDisplayId:I

    iput p2, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mWidthPx:I

    iput p3, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mHeightPx:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/service/games/GameSessionViewHostConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/service/games/GameSessionViewHostConfiguration;

    iget v1, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mDisplayId:I

    iget v3, p1, Landroid/service/games/GameSessionViewHostConfiguration;->mDisplayId:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mWidthPx:I

    iget v3, p1, Landroid/service/games/GameSessionViewHostConfiguration;->mWidthPx:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mHeightPx:I

    iget p1, p1, Landroid/service/games/GameSessionViewHostConfiguration;->mHeightPx:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mDisplayId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mWidthPx:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mHeightPx:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GameSessionViewHostConfiguration{mDisplayId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWidthPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mWidthPx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeightPx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mHeightPx:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mDisplayId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mWidthPx:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/service/games/GameSessionViewHostConfiguration;->mHeightPx:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
