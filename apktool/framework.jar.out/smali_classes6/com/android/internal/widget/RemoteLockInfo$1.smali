.class Lcom/android/internal/widget/RemoteLockInfo$1;
.super Ljava/lang/Object;
.source "RemoteLockInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RemoteLockInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/widget/RemoteLockInfo;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/RemoteLockInfo;
    .locals 17

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    new-array v3, v2, [Z

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    move v5, v3

    invoke-virtual {v0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    move v6, v4

    invoke-virtual {v0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v4

    move v7, v5

    invoke-virtual {v0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    new-array v2, v2, [Z

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean v6, v2, v6

    move v2, v7

    invoke-virtual {v0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    invoke-virtual {v0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v14

    invoke-virtual {v0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v15

    new-instance v0, Lcom/android/internal/widget/RemoteLockInfo;

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lcom/android/internal/widget/RemoteLockInfo;-><init>(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;IJIZZLandroid/os/Bundle;Ljava/lang/CharSequence;Lcom/android/internal/widget/RemoteLockInfo-IA;)V

    return-object v0
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

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RemoteLockInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Lcom/android/internal/widget/RemoteLockInfo;
    .locals 0

    new-array p0, p1, [Lcom/android/internal/widget/RemoteLockInfo;

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

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RemoteLockInfo$1;->newArray(I)[Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object p0

    return-object p0
.end method
