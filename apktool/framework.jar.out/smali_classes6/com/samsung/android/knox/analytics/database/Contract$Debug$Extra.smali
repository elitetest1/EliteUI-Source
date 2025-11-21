.class public Lcom/samsung/android/knox/analytics/database/Contract$Debug$Extra;
.super Ljava/lang/Object;
.source "Contract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/database/Contract$Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Extra"
.end annotation


# static fields
.field public static final blacklist COMMAND_DUMP_CACHE:Ljava/lang/String; = "dumpCache"

.field public static final blacklist COMMAND_RESULT_SUCCESS:Ljava/lang/String; = "result"

.field public static final blacklist COMMAND_SAVE_CACHE:Ljava/lang/String; = "saveCache"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
