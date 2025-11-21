.class public final Lcom/android/server/job/DataSetProto$PackageEntryProto$StopReasonCount;
.super Ljava/lang/Object;
.source "DataSetProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/DataSetProto$PackageEntryProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StopReasonCount"
.end annotation


# static fields
.field public static final blacklist COUNT:J = 0x10500000002L

.field public static final blacklist REASON:J = 0x10e00000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/job/DataSetProto$PackageEntryProto;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
