.class public final Landroid/app/servertransaction/PipStateTransactionItem;
.super Landroid/app/servertransaction/ActivityTransactionItem;
.source "PipStateTransactionItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/PipStateTransactionItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mPipState:Landroid/app/PictureInPictureUiState;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/servertransaction/PipStateTransactionItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/PipStateTransactionItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/PipStateTransactionItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Landroid/app/PictureInPictureUiState;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/IBinder;)V

    iput-object p2, p0, Landroid/app/servertransaction/PipStateTransactionItem;->mPipState:Landroid/app/PictureInPictureUiState;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>(Landroid/os/Parcel;)V

    sget-object v0, Landroid/app/PictureInPictureUiState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/PictureInPictureUiState;

    iput-object p1, p0, Landroid/app/servertransaction/PipStateTransactionItem;->mPipState:Landroid/app/PictureInPictureUiState;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/PipStateTransactionItem-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/PipStateTransactionItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/servertransaction/ActivityTransactionItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Landroid/app/servertransaction/PipStateTransactionItem;

    iget-object p0, p0, Landroid/app/servertransaction/PipStateTransactionItem;->mPipState:Landroid/app/PictureInPictureUiState;

    iget-object p1, p1, Landroid/app/servertransaction/PipStateTransactionItem;->mPipState:Landroid/app/PictureInPictureUiState;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 0

    iget-object p0, p0, Landroid/app/servertransaction/PipStateTransactionItem;->mPipState:Landroid/app/PictureInPictureUiState;

    invoke-virtual {p1, p2, p0}, Landroid/app/ClientTransactionHandler;->handlePictureInPictureStateChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/PictureInPictureUiState;)V

    return-void
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    const/16 v0, 0x20f

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroid/app/servertransaction/PipStateTransactionItem;->mPipState:Landroid/app/PictureInPictureUiState;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PipStateTransactionItem{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/servertransaction/ActivityTransactionItem;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/servertransaction/ActivityTransactionItem;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p0, p0, Landroid/app/servertransaction/PipStateTransactionItem;->mPipState:Landroid/app/PictureInPictureUiState;

    invoke-virtual {p0, p1, p2}, Landroid/app/PictureInPictureUiState;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
