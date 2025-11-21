.class public final Landroid/service/games/CreateGameSessionRequest;
.super Ljava/lang/Object;
.source "CreateGameSessionRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/games/CreateGameSessionRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mGamePackageName:Ljava/lang/String;

.field private final blacklist mTaskId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/games/CreateGameSessionRequest$1;

    invoke-direct {v0}, Landroid/service/games/CreateGameSessionRequest$1;-><init>()V

    sput-object v0, Landroid/service/games/CreateGameSessionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/games/CreateGameSessionRequest;->mTaskId:I

    iput-object p2, p0, Landroid/service/games/CreateGameSessionRequest;->mGamePackageName:Ljava/lang/String;

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
    instance-of v1, p1, Landroid/service/games/CreateGameSessionRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/service/games/CreateGameSessionRequest;

    iget v1, p0, Landroid/service/games/CreateGameSessionRequest;->mTaskId:I

    iget v3, p1, Landroid/service/games/CreateGameSessionRequest;->mTaskId:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Landroid/service/games/CreateGameSessionRequest;->mGamePackageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/service/games/CreateGameSessionRequest;->mGamePackageName:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public whitelist getGamePackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/games/CreateGameSessionRequest;->mGamePackageName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getTaskId()I
    .locals 0

    iget p0, p0, Landroid/service/games/CreateGameSessionRequest;->mTaskId:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget v0, p0, Landroid/service/games/CreateGameSessionRequest;->mTaskId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Landroid/service/games/CreateGameSessionRequest;->mGamePackageName:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GameSessionRequest{mTaskId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/games/CreateGameSessionRequest;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mGamePackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/service/games/CreateGameSessionRequest;->mGamePackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/service/games/CreateGameSessionRequest;->mTaskId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/service/games/CreateGameSessionRequest;->mGamePackageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    return-void
.end method
