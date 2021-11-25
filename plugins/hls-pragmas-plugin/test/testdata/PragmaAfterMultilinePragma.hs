{-# OPTIONS_GHC -Wall #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# LANGUAGE RecordWildCards, 
   OverloadedStrings #-}

data Metaprogram = Metaprogram
  { mp_name             :: !Text
  , mp_known_by_auto    :: !Bool
  , mp_show_code_action :: !Bool
  , mp_program          :: !(TacticsM ())
  }
  deriving stock Generic
{-# ANN Metaprogram "hello" #-}

instance NFData Metaprogram where
  rnf (!(Metaprogram !_ !_ !_ !_)) = ()
