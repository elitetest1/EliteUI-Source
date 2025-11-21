.class public Lcom/samsung/android/ims/options/SemCapabilities$FetchType;
.super Ljava/lang/Object;
.source "SemCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/options/SemCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FetchType"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist FETCH_TYPE_OTHER:I = 0x0

.field public static final whitelist FETCH_TYPE_POLL:I = 0x1


# direct methods
.method public constructor whitelist <init>(Lcom/samsung/android/ims/options/SemCapabilities;)V
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
