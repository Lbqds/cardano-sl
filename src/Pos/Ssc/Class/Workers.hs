module Pos.Ssc.Class.Workers
       ( SscWorkersClass(..)
       ) where

import           Data.Tagged         (Tagged)

import           Pos.Ssc.Class.Types (SscTypes (..))
import           Pos.Types.Types     (SlotId)
import           Pos.WorkMode        (WorkMode)

class SscTypes ssc => SscWorkersClass ssc where
    sscOnNewSlot :: WorkMode m => Tagged ssc (SlotId -> m ())
    sscWorkers :: WorkMode m => Tagged ssc [m ()]
